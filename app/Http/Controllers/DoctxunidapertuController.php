<?php

namespace App\Http\Controllers;

use App\Models\Doctxunidapertu;
use App\Models\Docente;
use App\Models\UnidadAperturado;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\TryCatch;

class DoctxunidapertuController extends Controller
{     

    public function index(){
        $doctxunidaperturados = Doctxunidapertu::all();
        $docentes = Docente::all();
        $unidad_aperturados = UnidadAperturado::all();
        return view('docentes-x-unidad-aperturada.index', 
        compact('doctxunidaperturados','docentes','unidad_aperturados'));
    }
    
    public function store(Request $request){
        //dd($request->all());
        $doctxunidaperturados = new Doctxunidapertu();
        $doctxunidaperturados->id_docentes = $request->id_docentes;
        $doctxunidaperturados->id_unidad_aperturados = $request->id_unidad_aperturados;
        $doctxunidaperturados->save();
        return redirect()->route('docentes-x-unidad-aperturada.index');
    }

    public function update(Request $request, $id){
        $doctxunidaperturados = Doctxunidapertu::find($id);
        $doctxunidaperturados->id_docentes = $request->id_docentes;
        $doctxunidaperturados->id_unidad_aperturados = $request->id_unidad_aperturados;
        $doctxunidaperturados->save();
        return redirect()->route('docentes-x-unidad-aperturada.index');
    }

    public function destroy($id){
        try {
            $doctxunidaperturados = Doctxunidapertu::find($id);

            // if ($ciclo->unidad_didacticas) {
            //     return redirect()->route('ciclos.index')
            //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
            // }

            $doctxunidaperturados->forceDelete();

            return redirect()->route('docentes-x-unidad-aperturada.index')
                ->with('success', 'unidad aperturado eliminado correctamente');
        } catch (\Exception $e) {
            return redirect()->route('docentes-x-unidad-aperturada.index')
                ->with('error', 'No se puede eliminar unidad aperturado, ya que está siendo utilizado en otras tablas: ');
        }
    }
}