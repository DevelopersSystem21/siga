<?php

namespace App\Http\Controllers;

use App\Models\Indicador;
use App\Models\CapacidadLogro;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\TryCatch;

class IndicadorController extends Controller
{     

    public function index(){
        $indicadors = Indicador::all();
        $capacidadlogros = CapacidadLogro::all();
        return view('indicador.index', 
        compact('indicadors','capacidadlogros'));
    }
    
    public function store(Request $request){
        //dd($request->all());
        $indicadors = new Indicador();
        $indicadors->nombre = $request->nombre;
        $indicadors->id_capacidad_logros = $request->id_capacidad_logros;
        $indicadors->save();
        return redirect()->route('capacidad-logro.show',['id' => $request->id_capacidad_logros]);
    }

    public function update(Request $request, $id){
        $indicadors = Indicador::find($id);
        $indicadors->nombre = $request->nombre;
        $indicadors->id_capacidad_logros = $request->id_capacidad_logros;
        $indicadors->save();
        return redirect()->route('capacidad-logro.show',['id' => $request->id_capacidad_logros]);
    }

    public function destroy($id){
        try {
            $indicadors = Indicador::find($id);

            $indicadors->forceDelete();

            return redirect()->back()
                ->with('success', 'indicador borrado correctamente');
        } catch (\Exception $e) {
            return redirect()->back()
                ->with('error', 'No se puede borrar indicador, ya que está siendo utilizado en otras tablas: ');
        }
    }
}