<?php

namespace App\Http\Controllers;

use App\Models\Ciclo;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\TryCatch;

class CiclosController extends Controller
{
    // public function index(){
    //     return view('ciclos.index');
    // }

    public function index()
    {
        $ciclos = Ciclo::all();
        return view('ciclos.index', compact('ciclos'));
    }

    public function create()
    {
        return view('ciclos.create');
    }

    public function store(Request $request)
    {
        $ciclos = new Ciclo();
        $ciclos->nombre = $request->nombre;
        $ciclos->save();
        return redirect()->route('ciclos.index');
    }

    public function update(Request $request, $id)
    {
        $ciclos = Ciclo::find($id);
        $ciclos->nombre = $request->nombre;
        $ciclos->save();
        return redirect()->route('ciclos.index');
    }

    public function destroy($id)
    {
        try {
            $ciclo = Ciclo::find($id);

            if ($ciclo->unidad_didacticas) {
                return redirect()->route('ciclos.index')
                    ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
            }

            $ciclo->forceDelete();

            return redirect()->route('ciclos.index')
                ->with('success', 'Ciclo eliminado correctamente');
        } catch (\Exception $e) {
            return redirect()->route('ciclos.index')
                ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas: ');
        }
    }



    // public function delete( $id){
    //     $ciclos = Ciclo::find($id);
    //     $ciclos->estado = "inactivo";
    //     $ciclos->save();
    //     return redirect()->route('ciclos.index');
    // }
}
