<?php

namespace App\Http\Controllers;
use App\Models\TipoModulo;
use Illuminate\Http\Request;

class TipoModuloController extends Controller
{
    // public function index(){
    //     return view('tipo-modulo.index');
    // }

    public function index(){
        $tipo_modulos = TipoModulo::all();
        return view('tipo-modulo.index', compact('tipo_modulos'));
    }
    
        public function create(){
            return view('periodo_academicos.create');
        }
    
        public function store(Request $request){
            $tipo_modulos = new TipoModulo();
            $tipo_modulos->nombre = $request->nombre;
            $tipo_modulos->save();
            return redirect()->route('tipo-modulo.index');
        }
    
        public function update(Request $request, $id){
            $tipo_modulos = TipoModulo::find($id);
            $tipo_modulos->nombre = $request->nombre;
            $tipo_modulos->save();
            return redirect()->route('tipo-modulo.index');
        }
        public function destroy($id){
            try {
                $tipo_modulos = TipoModulo::find($id);

                // if ($ciclo->unidad_didacticas) {
                //     return redirect()->route('ciclos.index')
                //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
                // }

                $tipo_modulos->forceDelete();

                return redirect()->route('tipo-modulo.index')
                    ->with('success', 'tipo modulo eliminado correctamente');
            } catch (\Exception $e) {
                return redirect()->route('tipo-modulo.index')
                    ->with('error', 'No se puede eliminar tipo modulo, ya que está siendo utilizado en otras tablas: ');
            }
        }
        // public function delete( $id){
        //     $tipo_modulos = TipoModulo::find($id);
        //     $tipo_modulos->estado = "inactivo";
        //     $tipo_modulos->save();
        //     return redirect()->route('tipo-modulo.index');
        // }
}
