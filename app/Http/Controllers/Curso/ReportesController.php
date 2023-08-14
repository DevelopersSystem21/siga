<?php

namespace App\Http\Controllers\Curso;

use App\Http\Controllers\Controller;
use App\Models\Aulas;
use App\Models\Curso;
use App\Models\Horario;
use Illuminate\Http\Request;
use PDF;

class ReportesController extends Controller
{
    public function estudiantes(Curso $curso)
    {

        if(request()->has('pdf')){
            return PDF::loadView('cursos.reportes.estudiantes_print', compact('curso'))->inline();
        }
        return view('cursos.reportes.estudiantes', compact('curso'));
    }

}
