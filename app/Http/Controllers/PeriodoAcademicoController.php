<?php

namespace App\Http\Controllers;
use App\Models\PeriodoAcademico;
use Illuminate\Http\Request;

class PeriodoAcademicoController extends Controller
{
  
    public function index(){
    $periodo_academicos = PeriodoAcademico::all();
    //$periodo_academicos = PeriodoAcademico::where('estado', 'activo')->get();
    return view('periodo-academico.index', compact('periodo_academicos'));
}


    public function create(){
        return view('periodo_academicos.create');
    }

    public function store(Request $request){
        $periodo_academicos = new PeriodoAcademico();
        $periodo_academicos->nombre = $request->nombre;
        $periodo_academicos->fecha_inicio = $request->fecha_inicio;
        $periodo_academicos->fecha_fin = $request->fecha_fin;
        $periodo_academicos->estado = $request->estado;
        $periodo_academicos->save();
        return redirect()->route('periodo-academico.index');
    }

    public function edit($id){
        $periodo_academicos = PeriodoAcademico::find($id);
        return view('periodo_academicos.edit',compact('actividad'));
    }
    public function update(Request $request, $id){
        $periodo_academicos = PeriodoAcademico::find($id);
        $periodo_academicos->nombre = $request->nombre;
        $periodo_academicos->fecha_inicio = $request->fecha_inicio;
        $periodo_academicos->fecha_fin = $request->fecha_fin;
        $periodo_academicos->estado = $request->estado;
        $periodo_academicos->save();
        return redirect()->route('periodo-academico.index');
    }

    public function destroy($id){
        try {
            $periodo_academicos = PeriodoAcademico::find($id);

            // if ($ciclo->unidad_didacticas) {
            //     return redirect()->route('ciclos.index')
            //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
            // }

            $periodo_academicos->forceDelete();

            return redirect()->route('periodo-academico.index')
                ->with('success', 'periodo academico eliminado correctamente');
        } catch (\Exception $e) {
            return redirect()->route('periodo-academico.index')
                ->with('error', 'No se puede eliminar periodo academico, ya que está siendo utilizado en otras tablas: ');
        }
    }
    // public function delete( $id){
    //     $periodo_academicos = PeriodoAcademico::find($id);
    //     $periodo_academicos->estado = "inactivo";
    //     $periodo_academicos->save();
    //     return redirect()->route('periodo-academico.index');
    // }

}
