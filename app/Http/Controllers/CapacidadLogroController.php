<?php

namespace App\Http\Controllers;

use App\Models\CapacidadLogro;
use App\Models\DetRegistroAuxiliar;
use App\Models\Indicador;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\TryCatch;

class CapacidadLogroController extends Controller
{     

    public function index(){
        $capacidadlogros = CapacidadLogro::all();
        $detregistroauxiliars = DetRegistroAuxiliar::all();
        return view('capacidad-logro.index', 
        compact('capacidadlogros','detregistroauxiliars'));
    }
    public function show($id){
        $capacidadlogros = CapacidadLogro::find($id);
        $indicadores = Indicador::where('id_capacidad_logros', $id)->orderBy('nombre')->get();
        return view('capacidad-logro.show',compact('capacidadlogros','indicadores'));
    }
    public function store(Request $request){
        $capacidadlogros = new CapacidadLogro();
        $capacidadlogros->nombre = $request->nombre;
        $capacidadlogros->peso = $request->peso;
        $capacidadlogros->id_unidad_didacticas = $request->id_unidad_didacticas;
        $capacidadlogros->save();
        return redirect()->route('unidades-didacticas.show',['id' => $request->id_unidad_didacticas]);
    }
    

    public function update(Request $request, $id){
        $capacidadlogros = CapacidadLogro::find($id);
        $capacidadlogros->nombre = $request->nombre;
        $capacidadlogros->peso = $request->peso;
        $capacidadlogros->id_unidad_didacticas = $request->id_unidad_didacticas;
        $capacidadlogros->save();
        return redirect()->route('unidades-didacticas.show',['id' => $request->id_unidad_didacticas]);
    }

    public function destroy($id)
{
    try {
        $capacidadlogros = CapacidadLogro::find($id);
        $capacidadlogros->forceDelete();
        return redirect()->back()
            ->with('success', 'Capacidad logro eliminado correctamente');
    } catch (\Exception $e) {
        return redirect()->back()
            ->with('error', 'No se puede eliminar capacidad logro, ya que está siendo utilizado en otras tablas');
    }
}

}