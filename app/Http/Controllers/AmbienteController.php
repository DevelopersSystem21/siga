<?php

namespace App\Http\Controllers;
use App\Models\Aulas;
use Illuminate\Http\Request;

class AmbienteController extends Controller
{

    public function index(){
        $aulas = Aulas::all();
        return view('aulas.index', compact('aulas'));
    }
    
        public function create(){
            return view('ciclos.create');
        }
    
        public function store(Request $request){
            $aulas = new Aulas();
            $aulas->capacidad = $request->capacidad;
            $aulas->save();
            return redirect()->route('aulas.index');
        }
    
        public function update(Request $request, $id){
            $aulas = Aulas::find($id);
            $aulas->capacidad = $request->capacidad;
            $aulas->save();
            return redirect()->route('aulas.index');
        }

        public function destroy($id){
            try {
                $aulas = Aulas::find($id);

                // if ($ciclo->unidad_didacticas) {
                //     return redirect()->route('ciclos.index')
                //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
                // }

                $aulas->forceDelete();

                return redirect()->route('aulas.index')
                    ->with('success', 'Aula eliminada correctamente');
            } catch (\Exception $e) {
                return redirect()->route('aulas.index')
                    ->with('error', 'No se puede eliminar aula, ya que está siendo utilizado en otras tablas: ');
            }
        }
        // public function delete( $id){
        //     $aulas = Aulas::find($id);
        //     $aulas->estado = "inactivo";
        //     $aulas->save();
        //     return redirect()->route('aulas.index');
        // }
}