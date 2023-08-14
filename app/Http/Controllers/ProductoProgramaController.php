<?php

namespace App\Http\Controllers;

use App\Models\Producto;
use App\Models\ProgramaAcademico;
use App\Models\ProductoPrograma;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\TryCatch;

class ProductoProgramaController extends Controller
{

    public function index()
    {
        $productos = Producto::all();
        $programa_academicos = ProgramaAcademico::all();
        $producto_programas = ProductoPrograma::all();
        return view('producto-programa.index', compact('productos','programa_academicos','producto_programas'));
    }

    public function create()
    {
        return view('producto-programa.create');
    }

    public function store(Request $request)
    {
        $producto_programas = new ProductoPrograma();
        $producto_programas->id_producto = $request->id_producto;
        $producto_programas->id_programa_academico = $request->id_programa_academico;
        $producto_programas->save();
        return redirect()->route('producto-programa.index');
    }

    public function update(Request $request, $id)
    {
        $producto_programas = ProductoPrograma::find($id);
        $producto_programas->id_producto = $request->id_producto;
        $producto_programas->id_programa_academico = $request->id_programa_academico;
        $producto_programas->save();
        return redirect()->route('producto-programa.index');
    }

    public function destroy($id)
    {
        try {
            $producto_programas = ProductoPrograma::find($id);

            // if ($producto_programas->unidad_didacticas) {
            //     return redirect()->route('producto-programa.index')
            //         ->with('error', 'No se puede eliminar el producto-programa, ya que está siendo utilizado en otras tablas.');
            // }

            $producto_programas->forceDelete();

            return redirect()->route('producto-programa.index')
                ->with('success', 'Ciclo eliminado correctamente');
        } catch (\Exception $e) {
            return redirect()->route('producto-programa.index')
                ->with('error', 'No se puede eliminar producto-programa, ya que está siendo utilizado en otras tablas: ');
        }
    }

}