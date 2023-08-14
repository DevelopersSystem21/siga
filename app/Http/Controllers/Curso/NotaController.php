<?php

namespace App\Http\Controllers\Curso;

use App\Http\Controllers\Controller;
use App\Models\Aulas;
use App\Models\Convalidacion;
use App\Models\Curso;
use App\Models\Estudiante;
use App\Models\Horario;
use App\Models\Nota;
use App\Models\PeriodoAcademico;
use App\Models\ProgramaAcademico;
use App\Models\RubroTurno;
use App\Models\UnidadDidactica;
use Illuminate\Http\Request;

class NotaController extends Controller
{
    public function index(Request $request)
    {
        return view('cursos.notas.index');
    }
    public function programas(Request $request)
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

        return compact('rubros_turnos', 'periodos', 'programas', 'id_programa', 'id_rubro_turno', 'id_periodo');
    }

    public function unidades(ProgramaAcademico $programa)
    {
        $unidades = $programa->unidades;
        $id_unidad = $unidades->count() > 0 ? $unidades->first()->id : '';

        return compact('unidades', 'id_unidad');
    }


    public function cursos(UnidadDidactica $unidad, Request $request)
    {
        $cursos = Curso::where('id_rubro_turno', $request->get('id_rubro_turno'))/*->where('id_periodo', $request->get('id_periodo'))*/
            ->where('id_unidad_didactica', $request->get('id_unidad'))
            ->with('docente.persona', 'unidad_didactica', 'periodo', 'grupo', 'horarios')->withCount('matriculas')->get();

        $cursos->map(function ($c) {
            return $c->nombre = $c->unidad_didactica->nombre . ', ' . $c->grupo->nombre . ', ' . $c->periodo->nombre;
        });

        $id_curso = $cursos->count() > 0 ? $cursos->first()->id : '';

        return compact('cursos', 'id_curso');
    }

    public function datos(Curso $curso, Request $request)
    {
        $capacidades = $curso->unidad_didactica->capacidades()->without('unidad_didacticas')->with('indicadores')->orderBy('nombre')->get();
        $total = $capacidades->sum('peso');
        $capacidades->map(function ($c) use ($total) {
            return $c->porcentaje = round(100 * $c->peso / $total, 2);
        });
        $curso->capacidades = $capacidades;
        $matriculas = $curso->matricula_unidades()->without('matricula.estudiante.personas', 'matricula.estudiante.ciudades', 'matricula.estudiante.programa_academicos')
            ->with('matricula.estudiante.persona', 'notas')->get();
        $curso->matricula_unidades = $matriculas;

        $indicadores = $capacidades->pluck('indicadores')->flatten();

        $notas = collect();

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

        return compact('curso', 'notas');
    }

    public function create(Curso $curso, Request  $request)
    {

        return view('cursos.notas.edit', compact('curso'));
    }

    public function store(Curso $curso, Request  $request)
    {
        $notas = $request->all();

        foreach ($curso->matricula_unidades as $matricula) {
            $matricula->notas()->delete();
        }

        foreach ($notas as $nota) {
            if ($nota['valor']) {
                $nota['user_id'] = $request->user()->id;
                Nota::create($nota);
            }
        }

        return collect([
            'mensaje' => 'Guardado con éxito',
        ]);
    }

    public function convalidacion(Estudiante $estudiante, Request $request)
    {
        $estudiante->convalidaciones()->delete();
        foreach ($request->get('notas') as $nota) {
            if ($nota['nota'] != '') {
                $estudiante->convalidaciones()->create($nota);
            }
        }

        return back();
    }
}
