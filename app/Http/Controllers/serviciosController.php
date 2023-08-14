<?php

namespace App\Http\Controllers;
use App\Models\Servicios;
use Illuminate\Http\Request;

class serviciosController extends Controller
{
    // public function index(){
    //     return view('servicios.index');
    // }
    public function index(){
        $servicios = Servicios::all();
        return view('servicios.index', compact('servicios'));
    }
    
        public function create(){
            return view('servicios.create');
        }
    
        public function store(Request $request){
            $servicios = new Servicios();
            $servicios->nombre = $request->nombre;
            $servicios->save();
            return redirect()->route('servicios.index');
        }
    
        public function update(Request $request, $id){
            $servicios = Servicios::find($id);
            $servicios->nombre = $request->nombre;
            $servicios->save();
            return redirect()->route('servicios.index');
        }
        public function destroy($id){
            try {
                $servicios = Servicios::find($id);

                // if ($ciclo->unidad_didacticas) {
                //     return redirect()->route('ciclos.index')
                //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
                // }

                $servicios->forceDelete();

                return redirect()->route('servicios.index')
                    ->with('success', 'servicio eliminado correctamente');
            } catch (\Exception $e) {
                return redirect()->route('servicios.index')
                    ->with('error', 'No se puede eliminar servicio, ya que está siendo utilizado en otras tablas: ');
            }
        }
}
