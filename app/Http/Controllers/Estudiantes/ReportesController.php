<?php

namespace App\Http\Controllers\Estudiantes;

use App\Http\Controllers\Controller;
use App\Models\Estudiante;
use App\Models\Recibo;
use Illuminate\Http\Request;
use PDF;

class ReportesController extends Controller
{
    public function ficha_inscripcion(Estudiante $estudiante, Request $request)
    {
        return PDF::loadView('estudiantes.reportes.ficha_inscripcion', compact('estudiante'))->inline();
    }
    public function ficha_matricula(Estudiante $estudiante, Request $request)
    {
        return PDF::loadView('estudiantes.reportes.ficha_matricula', compact('estudiante'))->inline();
    }
}
