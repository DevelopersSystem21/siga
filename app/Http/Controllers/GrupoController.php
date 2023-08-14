<?php

namespace App\Http\Controllers;

use App\Models\Indicador;
use App\Models\CapacidadLogro;
use App\Models\Grupo;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\TryCatch;

class GrupoController extends Controller
{     

    public function index()
{
    $grupos = Grupo::orderBy('nombre')->get();
    return view('grupo.index', compact('grupos'));
}

    
    public function store(Request $request){
        //dd($request->all());
        $grupos = new Grupo();
        $grupos->nombre = $request->nombre;
        $grupos->save();
        return redirect()->route('grupo.index');
    }

    public function update(Request $request, $id){
        $grupos = Grupo::find($id);
        $grupos->nombre = $request->nombre;
        $grupos->save();
        return redirect()->route('grupo.index');
    }

    public function destroy($id){
        try {
            $grupos= Grupo::find($id);

            $grupos->forceDelete();

            return redirect()->route('grupo.index')
                ->with('success', 'grupo borrado correctamente');
        } catch (\Exception $e) {
            return redirect()->route('grupo.index')
                ->with('error', 'No se puede borrar grupo, ya que está siendo utilizado en otras tablas: ');
        }
    }
}