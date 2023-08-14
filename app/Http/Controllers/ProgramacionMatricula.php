<?php

namespace App\Http\Controllers;

/**use App\Models\Actividad;*/
use Illuminate\Http\Request;

class ProgramacionMatricula extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {



      /*   $actividads = Actividad::all();*/
        return view('programaciomMatricula.index');
    }

}
