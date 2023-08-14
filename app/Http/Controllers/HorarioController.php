<?php

namespace App\Http\Controllers;

use App\Models\UnidadAperturado;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\TryCatch;

class HorarioController extends Controller
{     

    public function index(){
        return view('horario.index');
    }
    public function show($id){
        $unidades_aperturadas = UnidadAperturado::find($id);
        return view('horario.show',compact('unidades_aperturadas'));
    }
}