<?php

namespace App\Http\Controllers;
use App\Models\Configuracion;
use Illuminate\Http\Request;

class ConfiguracionUnidadController extends Controller
{
    public function index(){
        $configuracions = Configuracion::all();
        return view('configuracion-unidad.index', compact('configuracions'));
    }
    
        public function create(){
            return view('configuracion-unidad.create');
        }
    
        public function store(Request $request){
            $configuracions = new Configuracion();
            $configuracions->tolalsemana = $request->tolalsemana;
            $configuracions->save();
            return redirect()->route('configuracion-unidad.index');
        }
    
        public function update(Request $request, $id){
            $configuracions = Configuracion::find($id);
            $configuracions->tolalsemana = $request->tolalsemana;
            $configuracions->save();
            return redirect()->route('configuracion-unidad.index');
        }
        
        public function destroy($id){
            try {
                $configuracions = Configuracion::find($id);

                // if ($ciclo->unidad_didacticas) {
                //     return redirect()->route('ciclos.index')
                //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
                // }

                $configuracions->forceDelete();

                return redirect()->route('configuracion-unidad.index')
                    ->with('success', 'Configuracion unidad eliminado correctamente');
            } catch (\Exception $e) {
                return redirect()->route('configuracion-unidad.index')
                    ->with('error', 'No se puede eliminar configuracion unidad, ya que está siendo utilizado en otras tablas: ');
            }
        }
        // public function delete( $id){
        //     $configuracions = Configuracion::find($id);
        //     $configuracions->estado = "inactivo";
        //     $configuracions->save();
        //     return redirect()->route('configuracion-unidad.index');
        // }
}
