<?php

namespace App\Http\Controllers;
use App\Models\Pais;
use Illuminate\Http\Request;

class PaisController extends Controller
{
    public function index(){
        $paises = Pais::all();
        return view('pais.index', compact('paises'));
    }

    public function create(){
        return view('pais.create');
    }

    public function store(Request $request){
        $paises = new Pais();
        $paises->codigopais = $request->codigopais;
        $paises->nompais = $request->nompais;
        $paises->save();
        return redirect()->route('pais.index');
    }

    public function update(Request $request, $idpais){
        $paises = Pais::find($idpais);
        $paises->codigopais = $request->codigopais;
        $paises->nompais = $request->nompais;
        $paises->save();
        return redirect()->route('pais.index');
    }
    public function destroy($id){
        try {
            $paises = Pais::find($id);

            // if ($ciclo->unidad_didacticas) {
            //     return redirect()->route('pais.index')
            //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
            // }

            $paises->forceDelete();

            return redirect()->route('pais.index')
                ->with('success', 'pais eliminado correctamente');
        } catch (\Exception $e) {
            return redirect()->route('pais.index')
                ->with('error', 'No se puede eliminar pais, ya que está siendo utilizado en otras tablas: ');
        }
    }
}

