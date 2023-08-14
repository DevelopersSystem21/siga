<?php

namespace App\Http\Controllers;
use App\Models\ModuloAperturado;
use App\Models\ModuloAcademico;
use App\Models\PeriodoAcademico;
use Illuminate\Http\Request;

class ModuloAperturadoController extends Controller 
{

    public function index(){
        $modulos_aperturados = ModuloAperturado::all();
        $modulo_academicos = ModuloAcademico::all();
        $periodo_academicos = PeriodoAcademico::all();
        return view('modulos-aperturados.index', 
        compact('modulos_aperturados','modulo_academicos','periodo_academicos'));
    }

    public function store(Request $request){
        //dd($request->all());
        $modulos_aperturados = new ModuloAperturado();
        $modulos_aperturados->estado = $request->estado;
        $modulos_aperturados->id_periodo_academicos = $request->id_periodo_academicos;
        $modulos_aperturados->id_modulo_academicos = $request->id_modulo_academicos;
        $modulos_aperturados->save();
        return redirect()->route('modulos-aperturados.index');
    }

    public function update(Request $request, $id){
        $modulos_aperturados = ModuloAperturado::find($id);
        $modulos_aperturados->estado = $request->estado;
        $modulos_aperturados->id_periodo_academicos = $request->id_periodo_academicos;
        $modulos_aperturados->id_modulo_academicos = $request->id_modulo_academicos;
        $modulos_aperturados->save();
        return redirect()->route('modulos-aperturados.index');
    }
    public function destroy($id){
        try {
            $modulos_aperturados = ModuloAperturado::find($id);

            // if ($ciclo->unidad_didacticas) {
            //     return redirect()->route('ciclos.index')
            //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
            // }

            $modulos_aperturados->forceDelete();

            return redirect()->route('modulos-aperturados.index')
                ->with('success', 'Modulo aperturado eliminado correctamente');
        } catch (\Exception $e) {
            return redirect()->route('modulos-aperturados.index')
                ->with('error', 'No se puede eliminar Modulo aperturado, ya que está siendo utilizado en otras tablas: ');
        }
    }
}