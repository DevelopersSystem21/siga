<?php

namespace App\Http\Controllers;
use App\Models\Docente;
use App\Models\Persona;
use App\Models\TipoIdentificacion;
use Illuminate\Http\Request;

class DocentesController extends Controller
{
    public function index(){
        $docentes = Docente::all();
        $personas = Persona::all();
        $tipo_identificacions = TipoIdentificacion::all();
        return view('docentes.index',compact('docentes','personas','tipo_identificacions'));
    }
    public function show($id){
        $docentes = Docente::find($id);
        return view('docentes.show',compact('docentes'));
    }
    public function store(Request $request){
        $personas = new Persona();  
        $personas->nombre = $request->nombre;
        $personas->apellidos = $request->apellidos;
        $personas->sexo = $request->sexo;
        $personas->direccion = $request->direccion;
        $personas->telefono = $request->telefono;
        $personas->email = $request->email;
        $personas->numiden = $request->numiden;
        $personas->id_tipo_identificacion = $request->id_tipo_identificacion;
        $personas->save();
    
        $id_persona = $personas->id;
        $docentes = new Docente();
        $docentes->codigo = $request->codigo;
        $docentes->id_persona = $id_persona;
        $docentes->save();
        
        return redirect()->route('docentes.index');
    }
    public function update(Request $request, $id) {
        //dd($request->all());
        $personas = Persona::find($id);
        $personas->nombre = $request->nombre;
        $personas->apellidos = $request->apellidos;
        $personas->sexo = $request->sexo;
        $personas->direccion = $request->direccion;
        $personas->telefono = $request->telefono;
        $personas->email = $request->email;
        $personas->numiden = $request->numiden;
        $personas->id_tipo_identificacion = $request->id_tipo_identificacion;
        $personas->save();
        
        $docentes = Docente::where('id_persona', $id)->first();
        $docentes->codigo = $request->codigo;
        $docentes->save();
        return redirect()->route('docentes.index');
    }
    public function destroy($id){
        try {
            $docentes = Docente::find($id);
            $id_persona = $docentes->id_persona;
            
            $docentes->forceDelete();
    
            $persona = Persona::find($id_persona);
            $persona->forceDelete();
    
            return redirect()->route('docentes.index')
                ->with('success', 'Docente borrado de la BD correctamente');
        } catch (\Exception $e) {
            return redirect()->route('docentes.index')
                ->with('error', 'No se puede borrar el docente, ya que está siendo utilizado en otras tablas: ');
        }
    }
}
