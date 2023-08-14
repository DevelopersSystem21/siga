<?php

namespace App\Http\Controllers;
use App\Models\UnidadAperturado;
use App\Models\ModuloAperturado;
use App\Models\UnidadDidactica;
use Illuminate\Http\Request;

class UnidadAperturadoController extends Controller 
{

    public function index(){
        $unidad_aperturados = UnidadAperturado::all();
       
        $unidad_didacticas = UnidadDidactica::all();
        return view('unidades-aperturadas.index', 
        compact('unidad_aperturados','unidad_didacticas'));
    }

    public function store(Request $request){
        //dd($request->all());
        $unidad_aperturados = new UnidadAperturado();
        $unidad_aperturados->estado = $request->estado;
        $unidad_aperturados->id_modulo_aperturados = $request->id_modulo_aperturados;
        $unidad_aperturados->id_unidad_didacticas = $request->id_unidad_didacticas;
        $unidad_aperturados->save();
        return redirect()->route('unidades-aperturadas.index');
    }

    public function update(Request $request, $id){
        $unidad_aperturados = UnidadAperturado::find($id);
        $unidad_aperturados->estado = $request->estado;
        $unidad_aperturados->id_modulo_aperturados = $request->id_modulo_aperturados;
        $unidad_aperturados->id_unidad_didacticas = $request->id_unidad_didacticas;
        $unidad_aperturados->save();
        return redirect()->route('unidades-aperturadas.index');
    }
    public function destroy($id){
        try {
            $unidad_aperturados = UnidadAperturado::find($id);

            // if ($ciclo->unidad_didacticas) {
            //     return redirect()->route('ciclos.index')
            //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
            // }

            $unidad_aperturados->forceDelete();

            return redirect()->route('unidades-aperturadas.index')
                ->with('success', 'unidad aperturado eliminado correctamente');
        } catch (\Exception $e) {
            return redirect()->route('unidades-aperturadas.index')
                ->with('error', 'No se puede eliminar unidad aperturado, ya que está siendo utilizado en otras tablas: ');
        }
    }
}