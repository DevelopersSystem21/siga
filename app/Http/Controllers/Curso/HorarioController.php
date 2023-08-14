<?php

namespace App\Http\Controllers\Curso;

use App\Http\Controllers\Controller;
use App\Models\Aulas;
use App\Models\Curso;
use App\Models\Horario;
use Illuminate\Http\Request;

class HorarioController extends Controller
{
    public function index(Curso $curso)
    {
        $ambientes = Aulas::get();

        $events = collect();

        foreach ($curso->horarios as $horario) {

            $events->push(
                [
                    'id' => 'event' . $horario->id,
                    'title' => $horario->unidad_aperturada?->unidad_didactica?->nombre . ' - ' . $horario->ambiente?->nombre . ' - ' . $curso->docente?->persona?->nombre_completo,
                    'start' => $horario->inicio_completo,
                    'end' => $horario->fin_completo,
                    'docente' => $curso->docente?->persona?->nombre_completo,
                    'editable' => false
                ]
            );
        }

        $horarios_semanales = collect();
        $inicio = $curso->inicio->startOfWeek();
        $fin = $curso->fin->endOfWeek();

        $i = 1;
        while ($inicio->lte($fin)) {
            foreach ($curso->horarios as $horario) {
                $horarios_semanales->push([
                    'id' => 'event' . $horario->id,
                    'title' => 'Sem. ' . $i . ', ' . $horario->unidad_aperturada?->unidad_didactica?->nombre . ' - ' . $horario->ambiente?->nombre . ' - ' . $curso->docente?->persona?->nombre_completo,
                    'start' => $inicio->copy()->addDays($horario->dia_id - 1)->addHours($horario->inicio->hour)->addMinutes($horario->inicio->minute),
                    'end' => $inicio->copy()->addDays($horario->dia_id - 1)->addHours($horario->inicio->hour)->addMinutes($horario->inicio->minute),
                    'docente' => $curso->docente?->persona?->nombre_completo,
                    'semana' => 'Semana ' . $i,
                    'editable' => false,
                ]);
            }
            $inicio = $inicio->addWeek();
            $i++;
        }


        return view('cursos.horarios.index', compact('curso', 'ambientes', 'events', 'horarios_semanales'));
    }

    public function store(Curso $curso, Request  $request)
    {
        $data = collect($request->all())->only([
            'id_ambiente', 'inicio', 'fin'
        ]);
        $weekday = ["Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"];

        //Revisar cruces
        //Cruces ambiente

        foreach ($request->get('dias') as $dia) {
            $data['dia_id'] = $dia;
            $data['dia'] = $weekday[$dia];


            $cruces = Horario::where('dia_id', $data['dia_id'])->where('id_ambiente', $data['id_ambiente'])->where(function ($q) use ($data) {
                return $q->where(function ($q) use ($data) {
                    return $q->where('inicio', '<=', $data['inicio'])->where('fin', '>=', $data['inicio']);
                })->orWhere(function ($q) use ($data) {
                    return $q->where('inicio', '<=', $data['fin'])->where('fin', '>=', $data['fin']);
                });
            })->count();

            if($cruces > 0){
                return back()->with('status', 'No se puede guardar, hay un cruce de horarios en el ambiente')->with('type', 'danger');
            }
        }
        foreach ($request->get('dias') as $dia) {
            $data['dia_id'] = $dia;
            $data['dia'] = $weekday[$dia];
            $curso->horarios()->create($data->toArray());
        }
        return back();
    }

    public function destroy(Horario $horario)
    {
        $horario->delete();
        return back()->with('status', 'Eliminado correctamente')->with('type', 'success');
    }
}
