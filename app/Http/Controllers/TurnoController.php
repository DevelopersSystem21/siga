<?php

namespace App\Http\Controllers;
use App\Models\Turno;
use Illuminate\Http\Request;

class TurnoController extends Controller
{

    public function index(){
        $turnos = Turno::all();
        return view('turno.index', compact('turnos'));
    }
    
        public function create(){
            return view('turno.create');
        }
    
        public function store(Request $request){
            $turnos = new Turno();
            $turnos->nombre = $request->nombre;
            $turnos->save();
            return redirect()->route('turno.index');
        }
    
        public function update(Request $request, $id){
            $turnos = Turno::find($id);
            $turnos->nombre = $request->nombre;
            $turnos->save();
            return redirect()->route('turno.index');
        }
        public function destroy($id){
            try {
                $turnos = Turno::find($id);

                // if ($ciclo->unidad_didacticas) {
                //     return redirect()->route('ciclos.index')
                //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
                // }

                $turnos->forceDelete();

                return redirect()->route('turno.index')
                    ->with('success', 'Turno eliminado correctamente');
            } catch (\Exception $e) {
                return redirect()->route('turno.index')
                    ->with('error', 'No se puede eliminar turno, ya que está siendo utilizado en otras tablas: ');
            }
        }
        // public function delete( $id){
        //     $turnos = Turno::find($id);
        //     $turnos->estado = "inactivo";
        //     $turnos->save();
        //     return redirect()->route('turno.index');
        // }
}
