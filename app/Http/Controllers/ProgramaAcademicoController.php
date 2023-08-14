<?php

namespace App\Http\Controllers;
use App\Models\ProgramaAcademico;
use Illuminate\Http\Request;

class ProgramaAcademicoController extends Controller
{

    public function index(){
        $programa_academicos = ProgramaAcademico::all();
        return view('ProgramaAcademico.index', compact('programa_academicos'));
    }
    
    
        public function create(){
            return view('periodo_academicos.create');
        }
    
        public function store(Request $request){
            $programa_academicos = new ProgramaAcademico();
            $programa_academicos->nombre = $request->nombre;
            $programa_academicos->save();
            return redirect()->route('ProgramaAcademico.index');
        }
    
        // public function edit($id){
        //     $programa_academicos = ProgramaAcademico::find($id);
        //     return view('periodo_academ.edit',compact('programa_academicos'));
        // }
        public function update(Request $request, $id){
            $programa_academicos = ProgramaAcademico::find($id);
            $programa_academicos->nombre = $request->nombre;
            $programa_academicos->save();
            return redirect()->route('ProgramaAcademico.index');
        }
        public function destroy($id){
            try {
                $programa_academicos = ProgramaAcademico::find($id);

                // if ($ciclo->unidad_didacticas) {
                //     return redirect()->route('ciclos.index')
                //         ->with('error', 'No se puede eliminar el ciclo, ya que está siendo utilizado en otras tablas.');
                // }

                $programa_academicos->forceDelete();

                return redirect()->route('ProgramaAcademico.index')
                    ->with('success', 'Programa Academico eliminado correctamente');
            } catch (\Exception $e) {
                return redirect()->route('ProgramaAcademico.index')
                    ->with('error', 'No se puede eliminar Programa Academico, ya que está siendo utilizado en otras tablas: ');
            }
        }
        // public function delete( $id){
        //     $programa_academicos = ProgramaAcademico::find($id);
        //     $programa_academicos->estado = "inactivo";
        //     $programa_academicos->save();
        //     return redirect()->route('ProgramaAcademico.index');
        // }
}
