<?php

namespace App\Http\Controllers;
use App\Models\Departamento;
use App\Models\Ciudad;
use Illuminate\Http\Request;

class CiudadController extends Controller
{
    public function index(){
        $ciudades = Ciudad::all();
        $departamentos = Departamento::all();
        return view('ciudad.index', compact('ciudades','departamentos'));
    }

    public function create(){
        return view('departamento.create');
    }

    public function store(Request $request){
        $ciudades = new Ciudad();
        $ciudades->codciud = $request->codciud;
        $ciudades->nomciu = $request->nomciu;
        $ciudades->iddep = $request->iddep;
        $ciudades->save();
        return redirect()->route('ciudad.index');
    }

    public function update(Request $request, $idCiudad){
        //dd($request->all());
        $ciudades = Ciudad::find($idCiudad);
        $ciudades->codciud = $request->codciud;
        $ciudades->nomciu = $request->nomciu;
        $ciudades->iddep = $request->iddep;
        $ciudades->save();
        return redirect()->route('ciudad.index');
    }
    public function destroy($id){
        try {
            $ciudades = Ciudad::find($id);

            // if ($ciclo->unidad_didacticas) {
            //     return redirect()->route('ciclos.index')
            //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
            // }

            $ciudades->forceDelete();

            return redirect()->route('ciudad.index')
                ->with('success', 'Ciudad eliminada correctamente');
        } catch (\Exception $e) {
            return redirect()->route('ciudad.index')
                ->with('error', 'No se puede eliminar ciudad, ya que está siendo utilizado en otras tablas: ');
        }
    }
}