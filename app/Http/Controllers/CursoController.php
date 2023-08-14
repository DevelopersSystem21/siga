<?php

namespace App\Http\Controllers;

use App\Models\Curso;
use App\Models\Docente;
use App\Models\Grupo;
use App\Models\PeriodoAcademico;
use App\Models\ProgramaAcademico;
use App\Models\RubroTurno;
use Illuminate\Http\Request;
use PDF;

class CursoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $cursos = Curso::with('docente.persona', 'unidad_didactica.modulo_academico', 'periodo', 'grupo', 'horarios')->withCount('matricula_unidades')->get();
        $docentes = Docente::with(['persona' => function ($q) {
            return $q->select('id')->selectRaw("CONCAT(apellidos, ' ', nombre, ' - ', numiden) as nombre");
        }])->get();
        $docentes->map(function ($q) {
            return $q->nombre = $q->persona->nombre;
        });

        $cursos->each->append('horario_agrupado');

        $programas = ProgramaAcademico::with('modulos.unidades_didacticas')->get();
        $periodos = PeriodoAcademico::get();
        $rubros_turnos = RubroTurno::get();
        $rubros_turnos->map(function ($q) {
            return $q->nombre = $q->rubro->nombre . ' - ' . $q->turno->nombre;
        });

        $grupos = Grupo::get();

        return view('cursos.index', compact('cursos', 'docentes', 'programas', 'periodos', 'rubros_turnos', 'grupos'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->all();
        if (!isset($data['codigo'])) {
            $data['codigo'] = 'Temp';
        }

        $cursos_abiertos = Curso::where('id_unidad_didactica', $data['id_unidad_didactica'])->where('id_periodo', $data['id_periodo'])
            ->where('id_rubro_turno', $data['id_rubro_turno'])->where('id_grupo', $data['id_grupo'])->count();

        if ($cursos_abiertos > 0) {
            return back()->with('status', 'No se puede guardar, ya hay una unidad programada con esos parámetros')->with('type', 'error');
        }

        $curso = Curso::create($data);


        if (!isset($data['codigo']) || $data['codigo'] == 'Temp') {
            $curso->update([
                'codigo' => $curso->periodo->nombre . 'UD' . '01'
            ]);
        }

        //->with('status', 'No se puede guardar, hay un cruce de horarios en el ambiente')->with('type', 'danger');
        return back()->with('status', 'Curso agregado correctamente')->with('type', 'success');
    }

    /**
     * Display the specified resource.
     */
    public function show(Curso $curso)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Curso $curso)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Curso $curso)
    {
        $curso->update($request->all());
        return back();
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Curso $curso)
    {
        if ($curso->matricula_unidades()->count() > 0) {
            return response([
                'message' => 'No se puede eliminar, ya tiene matriculas'
            ], 403);
        }

        $curso->delete();

        return back();
    }
}
