<?php

namespace App\Http\Controllers;

use App\Models\Producto;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\TryCatch;

class ProductoController extends Controller
{

    public function index()
    {
        $productos = Producto::all();
        return view('producto.index', compact('productos'));
    }

    public function create()
    {
        return view('producto.create');
    }

    public function store(Request $request)
    {
        $productos = new Producto();
        $productos->codigo = $request->codigo;
        $productos->nombre = $request->nombre;
        $productos->monto = $request->monto;
        $productos->save();
        return redirect()->route('producto.index');
    }

    public function update(Request $request, $id)
    {
        $productos = Producto::find($id);
        $productos->codigo = $request->codigo;
        $productos->nombre = $request->nombre;
        $productos->monto = $request->monto;
        $productos->save();
        return redirect()->route('producto.index');
    }

    public function destroy($id)
    {
        try {
            $productos = Producto::find($id);

            // if ($producto_programas->unidad_didacticas) {
            //     return redirect()->route('producto-programa.index')
            //         ->with('error', 'No se puede eliminar el producto-programa, ya que está siendo utilizado en otras tablas.');
            // }

            $productos->forceDelete();

            return redirect()->route('producto.index')
                ->with('success', 'producto eliminado correctamente');
        } catch (\Exception $e) {
            return redirect()->route('producto.index')
                ->with('error', 'No se puede eliminar producto, ya que está siendo utilizado en otras tablas: ');
        }
    }

}