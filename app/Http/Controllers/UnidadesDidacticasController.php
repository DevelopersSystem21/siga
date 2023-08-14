<?php

namespace App\Http\Controllers;

use App\Models\ModuloAcademico;
use App\Models\Configuracion;
use App\Models\Ciclo;
use App\Models\UnidadDidactica;
use App\Models\CapacidadLogro;
use App\Models\Indicador;
use Illuminate\Http\Request;

class UnidadesDidacticasController extends Controller
{
    public function index(){
        $unidades_didacticas = UnidadDidactica::orderBy('nombre')->get();
        // $unidades_didacticas = UnidadDidactica::orderBy('nombre', 'desc')->get();
        $modulo_academicos = ModuloAcademico::all();
        $configuracions = Configuracion::all();
        $ciclos = Ciclo::orderBy('nombre')->get();
        return view('unidades-didacticas.index',
        compact('unidades_didacticas','modulo_academicos','configuracions','ciclos'));
    }

    public function show($id){
        $unidades_didacticas = UnidadDidactica::find($id);
        $capacidadlogros = CapacidadLogro::where('id_unidad_didacticas', $id)->orderBy('nombre')->get();
        $indicadores = [];
        foreach ($capacidadlogros as $capacidadlogro) {
            $indicadores[] = Indicador::where('id_capacidad_logros', $capacidadlogro->id)->orderBy('nombre')->get();
        }
        return view('unidades-didacticas.show',compact('unidades_didacticas','capacidadlogros','indicadores'));
    }
    public function store(Request $request){
        //dd($request->all());
        $unidades_didacticas =new UnidadDidactica();
        $unidades_didacticas->nombre = $request->nombre;
        $unidades_didacticas->cantidad_creditos = $request->cantidad_creditos;
        $unidades_didacticas->horas_xsemana = $request->horas_xsemana;
        $unidades_didacticas->id_modulo_academico = $request->id_modulo_academico;
        $unidades_didacticas->id_ciclo = $request->id_ciclo;
        $unidades_didacticas->id_configuracion = $request->id_configuracion;
        $unidades_didacticas->save();
        return redirect()->route('unidades-didacticas.index');
    }
    public function update(Request $request, $id){
        $unidades_didacticas = UnidadDidactica::find($id);
        $unidades_didacticas->nombre = $request->nombre;
        $unidades_didacticas->cantidad_creditos = $request->cantidad_creditos;
        $unidades_didacticas->horas_xsemana = $request->horas_xsemana;
        $unidades_didacticas->id_modulo_academico = $request->id_modulo_academico;
        $unidades_didacticas->id_ciclo = $request->id_ciclo;
        $unidades_didacticas->id_configuracion = $request->id_configuracion;
        $unidades_didacticas->save();
        return redirect()->route('unidades-didacticas.index');
    }
    public function destroy($id){
        try {
            $unidades_didacticas = UnidadDidactica::find($id);

            //  if ($ciclo->unidad_didacticas) {
            //     return redirect()->route('ciclos.index')
            //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
            // }

            $unidades_didacticas->forceDelete();

            return redirect()->route('unidades-didacticas.index')
                ->with('success', 'Unidad didactica eliminada correctamente');
        } catch (\Exception $e) {
            return redirect()->route('unidades-didacticas.index')
                ->with('error', 'No se puede eliminar unidad didactica, ya que está siendo utilizado en otras tablas: ');
        }
    }
    // public function destroy($id){
    //     $unidades_didacticas = UnidadDidactica::find($id);
    //     $unidades_didacticas->delete(); 
    //     return redirect()->route('unidades-didacticas.index')
    //     ->with('success', 'Unidad didáctica eliminada correctamente');
    // }

}
