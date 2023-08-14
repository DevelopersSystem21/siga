<?php

namespace App\Http\Controllers;

use App\Models\DetRegistroAuxiliar;
use App\Models\Estudiante;
use App\Models\Doctxunidapertu;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\TryCatch;

class DetRegistroAuxiliarController extends Controller
{     

    public function index(){
        $detregistroauxiliars = DetRegistroAuxiliar::all();
        $estudiantes = Estudiante::all();
        $doctxunidapertus = Doctxunidapertu::all();
        return view('detalle-registro-auxiliar.index', 
        compact('detregistroauxiliars','estudiantes','doctxunidapertus'));
    }
    
    public function store(Request $request){
        //dd($request->all());
        $detregistroauxiliar = new DetRegistroAuxiliar();
        $detregistroauxiliar->id_estudiantes = $request->id_estudiantes;
        $detregistroauxiliar->id_doctxunidapertus = $request->id_doctxunidapertus;
        $detregistroauxiliar->save();
        return redirect()->route('detalle-registro-auxiliar.index');
    }

    public function update(Request $request, $id){
        $detregistroauxiliar = DetRegistroAuxiliar::find($id);
        $detregistroauxiliar->id_estudiantes = $request->id_estudiantes;
        $detregistroauxiliar->id_doctxunidapertus = $request->id_doctxunidapertus;
        $detregistroauxiliar->save();
        return redirect()->route('detalle-registro-auxiliar.index');
    }

    public function destroy($id){
        try {
            $detregistroauxiliar = DetRegistroAuxiliar::find($id);

            // if ($ciclo->unidad_didacticas) {
            //     return redirect()->route('ciclos.index')
            //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
            // }

            $detregistroauxiliar->forceDelete();

            return redirect()->route('detalle-registro-auxiliar.index')
                ->with('success', 'detalle registro eliminado correctamente');
        } catch (\Exception $e) {
            return redirect()->route('detalle-registro-auxiliar.index')
                ->with('error', 'No se puede eliminar detalle registro, ya que está siendo utilizado en otras tablas: ');
        }
    }
}