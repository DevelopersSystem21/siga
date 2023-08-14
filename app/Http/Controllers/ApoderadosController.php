<?php

namespace App\Http\Controllers;

use App\Models\Apoderado;
use App\Models\Estudiante;
use App\Models\Pais;
use App\Models\Persona;
use App\Models\TipoIdentificacion;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\Request;

class ApoderadosController extends Controller
{

    public function index(){

        $apoderados = Apoderado::all();
        $personas = Persona::all();
        $paises = Pais::all();
        $tipo_identificacions = TipoIdentificacion::all();

        return view('apoderados.index', compact('apoderados','personas','paises','tipo_identificacions'));
    }


    public function store(Request $request){

        $existencia = Persona::where('numiden', $request->numiden)->exists();

        if ($existencia) {
            return redirect()->back()->with('error', 'El número de identificación ya existe en la base de datos.');
        }
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
        $apoderados = new Apoderado();
        $apoderados->vinculo = $request->vinculo;
        $apoderados->id_persona = $id_persona;
        $apoderados->id_ciudad = $request->id_ciudad;
        $apoderados->save();

        return redirect()->route('apoderados.index');
    }
    
    public function buscarPersonas(Request $request)
    {
        $dni = $request->input('dni');
    
        $personas = Persona::where('numiden', 'LIKE', '%' . $dni . '%')->get();
    
        $apoderados = Apoderado::whereIn('id_persona', $personas->pluck('id'))->get();
    
        $results = [];
        foreach ($apoderados as $apoderado) {
            $results[] = [
                'id' => $apoderado->id,
                'text' => $apoderado->personas->nombre . ' ' . $apoderado->personas->apellidos
            ];
        }
    
        return response()->json($results);
    }
    

    public function update(Request $request, $id)
    {
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

        $apoderados = Apoderado::where('id_persona', $id)->first();
        $apoderados->vinculo = $request->vinculo;

        // Verificar si se envió el ID de la ciudad en el formulario
        if ($request->has('id_ciudad')) {
            $apoderados->id_ciudad = $request->id_ciudad;
        }

        $apoderados->save();
        return redirect()->route('apoderados.index');
    }


    public function destroy($id)
    {
        try {
            $estudiante = Estudiante::find($id);
            $id_persona = $estudiante->id_persona;

            $estudiante->forceDelete();

            $persona = Persona::find($id_persona);
            $persona->forceDelete();

            return redirect()->route('estudiantes.index')
                ->with('success', 'Estudiante borrado de la BD correctamente');
        } catch (\Exception $e) {
            return redirect()->route('estudiantes.index')
                ->with('error', 'No se puede borrar el estudiante, ya que está siendo utilizado en otras tablas: ');
        }
    }

}
