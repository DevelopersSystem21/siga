<?php

namespace App\Http\Controllers;
use App\Models\TipoIdentificacion;
use Illuminate\Http\Request;

class TipoIdentificacionController extends Controller
{
    // public function index(){
    //     return view('ciclos.index');
    // }

    public function index(){
        $tipoIdentificacion = TipoIdentificacion::all();
        return view('tipo-identificacion.index', compact('tipoIdentificacion'));
    }
    
        public function create(){
            return view('ciclos.create');
        }
    
        public function store(Request $request){
            $tipoIdentificacion = new TipoIdentificacion();
            $tipoIdentificacion->nombre = $request->nombre;
            $tipoIdentificacion->save();
            return redirect()->route('tipo-identificacion.index');
        }
    
        public function update(Request $request, $id){
            $tipoIdentificacion = TipoIdentificacion::find($id);
            $tipoIdentificacion->nombre = $request->nombre;
            $tipoIdentificacion->save();
            return redirect()->route('tipo-identificacion.index');
        }
        public function destroy($id){
            try {
                $tipoIdentificacion = TipoIdentificacion::find($id);

                // if ($ciclo->unidad_didacticas) {
                //     return redirect()->route('ciclos.index')
                //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
                // }

                $tipoIdentificacion->forceDelete();

                return redirect()->route('tipo-identificacion.index')
                    ->with('success', 'Tipo identificacion eliminado correctamente');
            } catch (\Exception $e) {
                return redirect()->route('tipo-identificacion.index')
                    ->with('error', 'No se puede eliminar tipo identificacion, ya que está siendo utilizado en otras tablas: ');
            }
        }
}