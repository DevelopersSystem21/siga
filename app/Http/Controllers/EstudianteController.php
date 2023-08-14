<?php

namespace App\Http\Controllers;

use App\Models\Apoderado;
use App\Models\Ciclo;
use App\Models\Ciudad;
use App\Models\Cuenta;
use App\Models\Curso;
use App\Models\Departamento;
use App\Models\Descuento;
use App\Models\Estudiante;
use App\Models\Pais;
use App\Models\PeriodoAcademico;
use App\Models\Persona;
use App\Models\Producto;
use App\Models\ProgramaAcademico;
use App\Models\Recibo;
use App\Models\RubroTurno;
use App\Models\TipoIdentificacion;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\Request;

class EstudianteController extends Controller
{
    public function index(Request $request)
    {
        $filtro = $request->get('query');

        $estudiantes = Estudiante::whereHas('persona', function ($q) use ($filtro) {
           return $q->where('nombre', 'LIKE', "%{$filtro}%")->orWhere('apellidos', 'LIKE', "%{$filtro}%")->orWhere('numiden', 'LIKE', "%{$filtro}%");
        })->get();

        $personas = Persona::all();
        $apoderados = Apoderado::all();
        $programa_academicos = ProgramaAcademico::all();
        $paises = Pais::all();
        $tipo_identificacions = TipoIdentificacion::all();


        return view(
            'estudiantes.index',
            compact('estudiantes', 'personas','apoderados', 'programa_academicos', 'paises', 'tipo_identificacions')
        );
    }

    public function indexW(Request $request)
    {
        $filtro = $request->get('query');

        $estudiantes = Estudiante::whereHas('persona', function ($q) use ($filtro) {
            return $q->where('nombre', 'LIKE', "%{$filtro}%")->orWhere('apellidos', 'LIKE', "%{$filtro}%")->orWhere('numiden', 'LIKE', "%{$filtro}%");
        })->get();

        $personas = Persona::all();
        $programa_academicos = ProgramaAcademico::all();
        $paises = Pais::all();
        $tipo_identificacions = TipoIdentificacion::all();


        return view(
            'estudiantes.indexW',
            compact('estudiantes', 'personas', 'programa_academicos', 'paises', 'tipo_identificacions')
        );
    }

    public function create()
    {
         $programa_academicos = ProgramaAcademico::all();
        $paises = Pais::all();
        $tipo_identificacions = TipoIdentificacion::all();
        return view('estudiantes.create',compact('programa_academicos','paises','tipo_identificacions'));
    }

    public function getShowData($id)
    {
        $estudiante = Estudiante::find($id);

        /** Información académica */
        $periodos = PeriodoAcademico::get();
        $ciclos = Ciclo::orderBy('nombre')->get();
        $rubros_turnos = RubroTurno::get();
        $rubros_turnos->map(function ($q) {
            return $q->nombre = $q->rubro->nombre . ' - ' . $q->turno->nombre;
        });
        $cursos = [];
        if ($estudiante->matricula) {
            $cursos = Curso::where('id_rubro_turno', $estudiante->matricula->id_rubro_turno)->whereHas('unidad_didactica', function ($q) use ($estudiante) {
                return $q->where('id_ciclo', $estudiante->matricula->id_ciclos);
            })->whereHas('unidad_didactica.modulo_academico', function ($q) use ($estudiante) {
                return $q->where('id_programa_academico', $estudiante->id_programa_academico);
            })->get();
            $ids_matriculados = $estudiante->matricula->matricula_unidades->pluck('unidad_aperturada.id_unidad_didactica');
            $cursos->map(function ($curso) use ($estudiante, $ids_matriculados) {
                $curso->matriculado = $estudiante->matricula->matricula_unidades->pluck('id_unidad_aperturada')->contains($curso->id);
                $curso->matricula = $estudiante->matricula->matricula_unidades->where('id_unidad_aperturada', $curso->id)->first();
                $curso->matriculable = true;

                if ($ids_matriculados->contains($curso->id_unidad_didactica) && !$curso->matriculado) {
                    $curso->matriculable = false;
                }
                return $curso;
            });
        }
        /** Información financiera */
        $productos = Producto::select2()->get();
        $descuentos = Descuento::get();
        $cuentas = Cuenta::get();
        $recibo_series = Recibo\Serie::get();
        $recibo_tipos = Recibo\Tipo::get();

        $fecha_hoy = Carbon::now()->format('Y-m-d');

        return [$estudiante, $periodos, $rubros_turnos, $ciclos, $cursos, $productos, $recibo_series, $recibo_tipos, $descuentos, $cuentas, $fecha_hoy];
    }
    public function show($id)
    {
        list($estudiante, $periodos, $rubros_turnos, $ciclos, $cursos, $productos, $recibo_series, $recibo_tipos, $descuentos, $cuentas, $fecha_hoy) = $this->getShowData($id);
        $unidades_all = $estudiante->programa_academico->unidades;

        foreach ($unidades_all as $unidad) {
            $convalidacion = $estudiante->convalidaciones->where('id_unidad_academica', $unidad->id)->first();
            $unidad->nota = $convalidacion ? $convalidacion->nota : '';
        }

        return view(
            'estudiantes.show',
            compact('estudiante', 'periodos', 'rubros_turnos', 'ciclos', 'cursos', 'productos', 'recibo_series', 'recibo_tipos', 'descuentos', 'cuentas', 'fecha_hoy', 'unidades_all')
        );
    }

    public function showAcademico($id)
    {
        list($estudiante, $periodos, $rubros_turnos, $ciclos, $cursos, $productos, $recibo_series, $recibo_tipos, $descuentos, $cuentas, $fecha_hoy) = $this->getShowData($id);
        $unidades_all = $estudiante->programa_academico->unidades;

        $unidades_all->map(function ($u) use ($estudiante) {
            if ($estudiante->matricula) {
                return $u->matriculado = $estudiante->matricula->matricula_unidades->pluck('unidad_aperturada')->flatten()->pluck('id_unidad_didactica')->contains($u->id);
            }
            else {
                return false;
            }
        });
        foreach ($unidades_all as $unidad) {

            $convalidacion = $estudiante->convalidaciones->where('id_unidad_academica', $unidad->id)->first();
            $unidad->nota = $convalidacion ? $convalidacion->nota : '';
        }

        return view(
            'estudiantes.show_academico',
            compact('estudiante', 'periodos', 'rubros_turnos', 'ciclos', 'cursos', 'productos', 'recibo_series', 'recibo_tipos', 'descuentos', 'cuentas', 'fecha_hoy', 'unidades_all')
        );
    }


    public function showFinanciero($id)
    {
        $estudiante = Estudiante::find($id);
        $periodos = PeriodoAcademico::get();
        $productos = $estudiante->programa_academico->productos()->select2()->get();
        $descuentos = Descuento::get();
        $cuentas = Cuenta::get();
        $recibo_series = Recibo\Serie::get();
        $recibo_tipos = Recibo\Tipo::get();

        $fecha_hoy = Carbon::now()->format('Y-m-d');

        // $apoderados;

        return view(
            'estudiantes.show_financiero',
            compact('estudiante', 'periodos', 'productos', 'descuentos', 'cuentas', 'recibo_series', 'recibo_tipos', 'fecha_hoy')
        );
    }


    public function store(Request $request)
    {
       //dd($request->all());
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
        $estudiantes = new Estudiante();
        $estudiantes->codigo = $request->codigo;
        $estudiantes->birthdate = $request->birthdate;
        $estudiantes->estado = $request->estado;
        $estudiantes->id_persona =$id_persona;
        $estudiantes->id_apoderado = $request->id_apoderado;
        $estudiantes->id_programa_academico = $request->id_programa_academico;
        $estudiantes->id_ciudad = $request->id_ciudad;
        $estudiantes->save();

        return redirect()->route('estudiantes.show',$estudiantes);
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

        $estudiantes = Estudiante::where('id_persona', $id)->first();
        $estudiantes->codigo = $request->codigo;
        $estudiantes->birthdate = $request->birthdate;
        $estudiantes->estado = $request->estado;
        $estudiantes->id_programa_academico = $request->id_programa_academico;
        // $estudiantes->id_apoderado = $request->id_apoderado;

        // Verificar si se envió el ID de la ciudad en el formulario
        if ($request->has('id_ciudad')) {
            $estudiantes->id_ciudad = $request->id_ciudad;
        }

        $estudiantes->save();
        return redirect()->route('estudiantes.index');
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


    public function subirFoto(Estudiante $estudiante, Request $request)
    {
        $this->validate($request, [
            'file' => 'mimes:jpeg,bmp,png'
        ]);

        try {
            $slug = $estudiante->id . '-' . Carbon::now()->timestamp . '.' . $request->file->getClientOriginalExtension();
            $request->file->storeAs('public/fotos', $slug);
            $estudiante->foto = $slug;
            $estudiante->save();
            return response(['Subido correctamente'], 200);
        } catch (Exception $e) {
            return response(['Error'], 404);
        }
    }
}
