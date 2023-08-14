<?php

namespace App\Http\Controllers;

use App\Models\ActaNota;
use App\Models\DetRegistroAuxiliar;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\TryCatch;

class ActaNotaController extends Controller
{     

    public function index(){
        $actanotas = ActaNota::all();
        $detregistroauxiliars = DetRegistroAuxiliar::all();
        return view('acta-nota.index', 
        compact('actanotas','detregistroauxiliars'));
    }
    
    public function store(Request $request){
        //dd($request->all());
        $actanotas = new ActaNota();
        $actanotas->estado = $request->estado;
        $actanotas->id_registro_auxiliar = $request->id_registro_auxiliar;
        $actanotas->save();
        return redirect()->route('acta-nota.index');
    }

    public function update(Request $request, $id){
        $actanotas = ActaNota::find($id);
        $actanotas->estado = $request->estado;
        $actanotas->id_registro_auxiliar = $request->id_registro_auxiliar;
        $actanotas->save();
        return redirect()->route('acta-nota.index');
    }

    public function destroy($id){
        try {
            $actanotas = ActaNota::find($id);

            // if ($ciclo->unidad_didacticas) {
            //     return redirect()->route('ciclos.index')
            //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
            // }

            $actanotas->forceDelete();

            return redirect()->route('acta-nota.index')
                ->with('success', 'acta nota eliminado correctamente');
        } catch (\Exception $e) {
            return redirect()->route('acta-nota.index')
                ->with('error', 'No se puede eliminar acta nota, ya que está siendo utilizado en otras tablas: ');
        }
    }
}