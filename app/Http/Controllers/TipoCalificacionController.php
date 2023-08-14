<?php

namespace App\Http\Controllers;
use App\Models\TipoCalificacion;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\TryCatch;

class TipoCalificacionController extends Controller
{
    public function index(){
        $tipo_calificacions = TipoCalificacion::all();
        return view('tipo-calificacion.index', compact('tipo_calificacions'));
    }
    
        public function store(Request $request){
            $tipo_calificacions = new TipoCalificacion();
            $tipo_calificacions->nombre = $request->nombre;
            $tipo_calificacions->save();
            return redirect()->route('tipo-calificacion.index');
        }
    
        public function update(Request $request, $id){
            $tipo_calificacions = TipoCalificacion::find($id);
            $tipo_calificacions->nombre = $request->nombre;
            $tipo_calificacions->save();
            return redirect()->route('tipo-calificacion.index');
        }

        public function destroy($id){
            try {
                $tipo_calificacions = TipoCalificacion::find($id);

                // if ($ciclo->unidad_didacticas) {
                //     return redirect()->route('tipo-calificacion.index')
                //         ->with('error', 'No se puede eliminar tipo calificacion, ya que está siendo utilizado en otras tablas.');
                // }

                $tipo_calificacions->forceDelete();

                return redirect()->route('tipo-calificacion.index')
                    ->with('success', 'tipo calificacion eliminado correctamente');
            } catch (\Exception $e) {
                return redirect()->route('tipo-calificacion.index')
                    ->with('error', 'No se puede eliminar tipo calificacion, ya que está siendo utilizado en otras tablas: ');
            }
        }
}