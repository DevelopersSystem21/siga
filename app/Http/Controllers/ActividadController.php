<?php

namespace App\Http\Controllers;
use App\Models\Actividad;
use Illuminate\Http\Request;

class ActividadController extends Controller
{
    //
    public function index(){

        $actividads = Actividad::all();
        return view('actividades.index',compact('actividads'));
    }
    public function create(){
        return view('actividades.create');
    }
    public function store(Request $request){
        $actividad = new Actividad();
        $actividad->nombre = $request->nombre;
        $actividad->save();
        return redirect()->route('actividades.index');
        // return $request->all();
    }
    public function show($id){
        $actividad = Actividad::find($id);
        return view('actividades.show',compact('actividad'));
    }
    public function edit($id){
        $actividad = Actividad::find($id);
        //return $actividad;
        return view('actividades.edit',compact('actividad'));
    }
    public function update(Request $request, $id){
        $actividad = Actividad::find($id);
        $actividad->nombre = $request->nombre;
        //return $actividad;
        $actividad->save();
        return redirect()->route('actividades.index');
    }
    public function destroy($id){
        try {
            $actividad = Actividad::find($id);

            // if ($ciclo->unidad_didacticas) {
            //     return redirect()->route('ciclos.index')
            //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
            // }

            $actividad->forceDelete();

            return redirect()->route('actividades.index')
                ->with('success', 'Actividad eliminada correctamente');
        } catch (\Exception $e) {
            return redirect()->route('actividades.index')
                ->with('error', 'No se puede eliminar actividad, ya que está siendo utilizado en otras tablas: ');
        }
    }
}
