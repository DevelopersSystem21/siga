<?php

namespace App\Http\Controllers;

use App\Models\Estudiante;
use App\Models\Matricula;
use App\Models\PeriodoAcademico;
use App\Models\UnidadDidactica;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\TryCatch;

class MatriculaController extends Controller
{

    public function index()
    {
        $matriculas = Matricula::all();
        $estudiantes = Estudiante::all();
        $periodo_academicos = PeriodoAcademico::all();
        $unidad_didacticas = UnidadDidactica::all();
        return view('matricula.index', compact('matriculas', 'estudiantes', 'periodo_academicos', 'unidad_didacticas'));
    }


    public function store(Request $request)
    {
        $matriculas = new Matricula();
        $matriculas->fecha = $request->fecha;
        $matriculas->id_estudiantes = $request->id_estudiantes;
        $matriculas->id_periodo_academicos = $request->id_periodo_academicos;
        $matriculas->save();
        return redirect()->route('matricula.index');
    }

    public function matricularEstudiante(Estudiante $estudiante, Request $request)
    {
        $estudiante->matriculas()->create($request->all());

        return back();
    }

    public function update(Request $request, $id)
    {
        $matriculas = Matricula::find($id);
        $matriculas->fecha = $request->fecha;
        $matriculas->id_estudiantes = $request->id_estudiantes;
        $matriculas->id_periodo_academicos = $request->id_periodo_academicos;
        $matriculas->save();
        return redirect()->route('matricula.index');
    }

    public function destroy($id)
    {
        try {
            $matriculas = Matricula::find($id);
            $matriculas->matricula_unidades()->delete();
            $matriculas->delete();
            //$matriculas->forceDelete();
            return back();

            return redirect()->route('matricula.index')
                ->with('success', 'matricula borrada correctamente');
        } catch (\Exception $e) {
            return redirect()->route('matricula.index')
                ->with('error', 'No se puede borrar matricula, ya que está siendo utilizado en otras tablas: ');
        }
    }
}
