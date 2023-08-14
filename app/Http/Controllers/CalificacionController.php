<?php

namespace App\Http\Controllers;

use App\Models\Calificacion;
use App\Models\TipoCalificacion;
use App\Models\CapacidadLogro;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\TryCatch;

class CalificacionController extends Controller
{     

    public function index(){
        $calificacions = Calificacion::all();
        $tipocalificacions = TipoCalificacion::all();
        $capacidadlogros = CapacidadLogro::all();
        return view('calificacion.index', 
        compact('calificacions','tipocalificacions','capacidadlogros'));
    }
    
    public function store(Request $request){
        //dd($request->all());
        $calificacions = new Calificacion();
        $calificacions->valor = $request->valor;
        $calificacions->valid = $request->valid;
        $calificacions->id_tipo_calificacions = $request->id_tipo_calificacions;
        $calificacions->id_capacidad_logros = $request->id_capacidad_logros;
        $calificacions->save();
        return redirect()->route('calificacion.index');
    }

    public function update(Request $request, $id){
        $calificacions = Calificacion::find($id);
        $calificacions->valor = $request->valor;
        $calificacions->valid = $request->valid;
        $calificacions->id_tipo_calificacions = $request->id_tipo_calificacions;
        $calificacions->id_capacidad_logros = $request->id_capacidad_logros;
        $calificacions->save();
        return redirect()->route('calificacion.index');
    }

    public function destroy($id){
        try {
            $calificacions = Calificacion::find($id);

            // if ($ciclo->unidad_didacticas) {
            //     return redirect()->route('ciclos.index')
            //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
            // }

            $calificacions->forceDelete();

            return redirect()->route('calificacion.index')
                ->with('success', 'calificacion borrada correctamente');
        } catch (\Exception $e) {
            return redirect()->route('calificacion.index')
                ->with('error', 'No se puede borrar calificacion, ya que está siendo utilizado en otras tablas: ');
        }
    }
}