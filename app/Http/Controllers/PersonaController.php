<?php

namespace App\Http\Controllers;
// use App\Models\Actividad;
use Illuminate\Http\Request;

class PersonaController extends Controller
{
    //
    public function index(){
        // $actividads = Actividad::all();
        // return view('persona.index',compact('actividads'));
        return view('persona.index');
    }
}
