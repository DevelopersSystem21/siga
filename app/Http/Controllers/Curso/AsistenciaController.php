<?php

namespace App\Http\Controllers\Curso;

use App\Http\Controllers\Controller;
use App\Models\Aulas;
use App\Models\Curso;
use App\Models\Estudiante;
use App\Models\Horario;
use App\Models\Inasistencia;
use App\Models\Nota;
use App\Models\PeriodoAcademico;
use App\Models\ProgramaAcademico;
use App\Models\RubroTurno;
use Illuminate\Http\Request;

class AsistenciaController extends Controller
{
    public function index(Request $request)
    {

        $programas = ProgramaAcademico::get();
        $periodos = PeriodoAcademico::get();
        $rubros_turnos = RubroTurno::get();
        $rubros_turnos->each->append('nombre');

        $id_programa = $programas->count() > 0 ? $programas->first()->id : '';
        $id_rubro_turno = $rubros_turnos->count() > 0 ? $rubros_turnos->first()->id : '';
        $id_periodo = $periodos->count() > 0 ? $periodos->first()->id : '';

        $id_programa = $request->get('id_programa', $id_programa);
        $id_rubro_turno = $request->get('id_rubro_turno', $id_rubro_turno);
        $id_periodo = $request->get('id_periodo', $id_periodo);

        $cursos = Curso::where('id_rubro_turno', $id_rubro_turno)->where('id_periodo', $id_periodo)
            ->whereHas('unidad_didactica.modulo_academico', function ($c) use ($id_programa) {
                return $c->where('id_programa_academico', $id_programa);
            })
            ->with('docente.persona', 'unidad_didactica', 'periodo', 'grupo', 'horarios')->withCount('matriculas')->get();


        return view('cursos.asistencia.index', compact('cursos', 'rubros_turnos', 'periodos', 'programas', 'id_programa', 'id_rubro_turno', 'id_periodo'));
    }

    public function datos(Curso $curso, Request $request)
    {
        $horarios_semanales = collect();
        $inicio = $curso->inicio->startOfWeek();
        $fin = $curso->fin->endOfWeek();

        $i = 1;
        while ($inicio->lte($fin)) {
            $horarios_semana = collect();
            foreach ($curso->horarios as $horario) {
                $horarios_semana->push([
                    'dia' => $horario->dia,
                    'dia_id' => $horario->dia_id,
                    'fecha' => $inicio->copy()->addDays($horario->dia_id - 1)->toDateString(),
                    'fecha_formateada' => $inicio->copy()->addDays($horario->dia_id - 1)->format('d/m/Y'),
                    'inicio' => $horario->inicio->format('h:i'),
                    'fin' => $horario->fin->format('h:i'),
                    'codigo' => $inicio->copy()->addDays($horario->dia_id - 1)->toDateString() . '-' . $horario->id,
                    'id' => $horario->id,
                    'asistio' => false
                ]);
            }
            $horarios_semanales->push([
                'semana' => $i,
                'inicio' => $inicio->format('d/m/Y'),
                'fin' => $inicio->copy()->endOfWeek()->format('d/m/Y'),
                'horarios' => $horarios_semana
            ]);
            $inicio = $inicio->addWeek();
            $i++;
        }

        $matriculas = $curso->matricula_unidades()->without('matricula.estudiante.personas', 'matricula.estudiante.ciudades', 'matricula.estudiante.programa_academicos')
            ->with('matricula.estudiante.persona', 'notas')->get();
        $curso->matricula_unidades = $matriculas;

        /*
        foreach ($matriculas as $mu) {
            foreach ($indicadores as $indicador) {
                $nota = $mu->notas->where('id_indicador', $indicador->id)->where('id_matricula_unidad', $mu->id)->first();
                $valor = $nota ? $nota->valor : '';
                $valor_recuperacion = $nota ? $nota->valor_recuperacion : '';

                $notas[$mu->id . '-' . $indicador->id] = [
                    'id_indicador' => $indicador->id, 'id_matricula_unidad' => $mu->id, 'valor' => $valor, 'valor_recuperacion' => $valor_recuperacion
                ];
            }
        }
        */


        $asistencias = collect();

        foreach ($matriculas as $mu) {
            foreach ($horarios_semanales as $hs) {
                foreach ($hs['horarios'] as $horario) {
                    $inasistencia = $mu->inasistencias->where('codigo', $horario['codigo'])->where('id_matricula_unidad', $mu->id)->first();

                    $asistencias[$mu->id . '-' . $horario['codigo']] = [
                        'id_horario' => $horario['id'], 'id_matricula_unidad' => $mu->id,
                        'codigo' => $horario['codigo'],
                        'asistio' => !$inasistencia,
                        'es_tardanza' => $inasistencia && $inasistencia->es_tardanza,
                        'es_permiso' => $inasistencia && $inasistencia->es_permiso,
                        'semana' => $hs['semana'],
                        'fecha' => $horario['fecha']
                    ];
                }
            }
        }


        return compact('curso', 'horarios_semanales', 'asistencias');
    }

    public function create(Curso $curso, Request  $request)
    {

        return view('cursos.asistencia.edit', compact('curso'));
    }

    public function store(Curso $curso, Request  $request)
    {
        $asistencias = $request->get('asistencias');
        $matriculas = collect($request->get('matriculas'));

        $curso->matricula_unidades()->whereIn('id', $matriculas->where('esta_inhabilitado', true)->pluck('id')->toArray())->update([
            'esta_inhabilitado' => true
        ]);

        foreach ($curso->matricula_unidades as $matricula) {
            $matricula->inasistencias()->delete();
        }

        foreach ($asistencias as $asistencia) {
            if (!$asistencia['asistio']) {
                $asistencia['user_id'] = $request->user()->id;
                Inasistencia::create($asistencia);
            }
        }

        return collect([
            'mensaje' => 'Guardado con éxito',
        ]);
    }
}
