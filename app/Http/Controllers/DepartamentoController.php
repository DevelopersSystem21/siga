<?php

namespace App\Http\Controllers;
use App\Models\Departamento;
use App\Models\Pais;
use Illuminate\Http\Request;

class DepartamentoController extends Controller
{
    public function index(){
        $departamentos = Departamento::all();
        $paises = Pais::all();
        return view('departamento.index', compact('departamentos','paises'));
    }

    public function create(){
        return view('departamento.create');
    }

    public function store(Request $request){
        $departamentos = new Departamento();
        $departamentos->coddepa = $request->coddepa;
        $departamentos->nomdepa = $request->nomdepa;
        $departamentos->idpais = $request->idpais;
        $departamentos->save();
        return redirect()->route('departamento.index');
    }

    public function update(Request $request, $iddep){
        //dd($request->all());
        $departamentos = Departamento::find($iddep);
        $departamentos->coddepa = $request->coddepa;
        $departamentos->nomdepa = $request->nomdepa;
        $departamentos->idpais = $request->idpais;
        $departamentos->save();
        return redirect()->route('departamento.index');
    }
    public function destroy($id){
        try {
            $departamentos = Departamento::find($id);

            // if ($ciclo->unidad_didacticas) {
            //     return redirect()->route('ciclos.index')
            //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
            // }

            $departamentos->forceDelete();

            return redirect()->route('departamento.index')
                ->with('success', 'departamento eliminado correctamente');
        } catch (\Exception $e) {
            return redirect()->route('departamento.index')
                ->with('error', 'No se puede eliminar departamento, ya que está siendo utilizado en otras tablas: ');
        }
    }
}