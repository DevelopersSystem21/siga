<?php

namespace App\Http\Controllers;

use App\Models\Asistencia;
use App\Models\DetRegistroAuxiliar;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\TryCatch;

class AsistenciaController extends Controller
{     

    public function index(){
        $asistencias = Asistencia::all();
        $detregistroauxiliars = DetRegistroAuxiliar::all();
        return view('asistencia.index', 
        compact('asistencias','detregistroauxiliars'));
    }
    
    public function store(Request $request){
        //dd($request->all());
        $asistencias = new Asistencia();
        $asistencias->fecha = $request->fecha;
        $asistencias->estado = $request->estado;
        $asistencias->id_registro_auxiliar = $request->id_registro_auxiliar;
        $asistencias->save();
        return redirect()->route('asistencia.index');
    }

    public function update(Request $request, $id){
        $asistencias = Asistencia::find($id);
        $asistencias->fecha = $request->fecha;
        $asistencias->estado = $request->estado;
        $asistencias->id_registro_auxiliar = $request->id_registro_auxiliar;
        $asistencias->save();
        return redirect()->route('asistencia.index');
    }

    public function destroy($id){
        try {
            $asistencias = Asistencia::find($id);

            // if ($ciclo->unidad_didacticas) {
            //     return redirect()->route('ciclos.index')
            //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
            // }

            $asistencias->forceDelete();

            return redirect()->route('asistencia.index')
                ->with('success', 'asistencia borrada correctamente');
        } catch (\Exception $e) {
            return redirect()->route('asistencia.index')
                ->with('error', 'No se puede borrar asistencia, ya que está siendo utilizado en otras tablas: ');
        }
    }
}