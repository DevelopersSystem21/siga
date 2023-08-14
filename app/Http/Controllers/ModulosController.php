<?php

namespace App\Http\Controllers;
use App\Models\ModuloAcademico;
use App\Models\TipoModulo;
use App\Models\ProgramaAcademico;
use Illuminate\Http\Request;

class ModulosController extends Controller
{

    public function index(){
        $modulo_academicos = ModuloAcademico::all();
        $tipo_modulos = TipoModulo::all();
        $programa_academicos = ProgramaAcademico::all();
        return view('modulos.index', 
        compact('modulo_academicos','tipo_modulos','programa_academicos'));
    }

    public function create(){
        return view('periodo_academicos.create');
    }

    public function store(Request $request){
        //dd($request->all());
        $modulo_academicos = new ModuloAcademico();
        $modulo_academicos->nombre = $request->nombre;
        $modulo_academicos->id_tipo_modulos = $request->id_tipo_modulo;
        $modulo_academicos->id_programa_academico = $request->id_programa_academico;
        $modulo_academicos->save();
        return redirect()->route('modulos.index');
    }

    public function update(Request $request, $id){
        $modulo_academicos = ModuloAcademico::find($id);
        $modulo_academicos->nombre = $request->nombre;
        $modulo_academicos->id_tipo_modulos = $request->id_tipo_modulo;
        $modulo_academicos->id_programa_academico = $request->id_programa_academico;
        $modulo_academicos->save();
        return redirect()->route('modulos.index');
    }
    public function destroy($id){
        try {
            $modulo_academicos = ModuloAcademico::find($id);

            // if ($ciclo->unidad_didacticas) {
            //     return redirect()->route('ciclos.index')
            //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
            // }

            $modulo_academicos->forceDelete();

            return redirect()->route('modulos.index')
                ->with('success', 'Modulo academico eliminado correctamente');
        } catch (\Exception $e) {
            return redirect()->route('modulos.index')
                ->with('error', 'No se puede eliminar Modulo academico, ya que está siendo utilizado en otras tablas: ');
        }
    }
    // public function delete( $id){
    //     $modulo_academicos = ModuloAcademico::find($id);
    //     $modulo_academicos->estado = "inactivo";
    //     $modulo_academicos->save();
    //     return redirect()->route('modulos.index');
    // }
}
