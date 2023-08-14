<?php

namespace App\Http\Controllers;

use App\Models\Matricula;
use App\Models\MatriculaUnidad;
use Illuminate\Http\Request;

class MatriculaUnidadController extends Controller
{
    public function store(Matricula $matricula, Request $request)
    {
        $matricula->matricula_unidades()->create($request->all());

        return back();
    }

    public function destroy($matriculaUnidad)
    {
        $matriculaUnidad = MatriculaUnidad::findOrFail($matriculaUnidad);
        $matriculaUnidad->delete();
        return back();
    }
}
