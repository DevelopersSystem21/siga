<?php

namespace App\Http\Controllers\Estudiantes;

use App\Http\Controllers\Controller;
use App\Models\Estudiante;
use App\Models\Pago;
use App\Models\Recibo;
use App\Models\Recibo\Serie;
use App\Models\Recibo\Tipo;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use PDF;

class PagoController extends Controller
{

    public function obtenerCorrelativo(Serie $serie, Tipo $tipo)
    {
        $correlativo = Recibo::where('id_tipo', $tipo->id)->where('id_serie', $serie->id)->max('numero') + 1;
        $fecha = Carbon::now()->format('d/m/Y');
        $hora = Carbon::now()->format('h:m a');
        return compact('correlativo', 'fecha', 'hora');
    }

    public function store(Estudiante $estudiante, Request $request)
    {
        $datos_recibo = $request->get('recibo');
        $datos_recibo['numero'] = Recibo::where('id_tipo', $datos_recibo['id_tipo'])->where('id_serie', $datos_recibo['id_serie'])->max('numero') + 1;
        $recibo = $estudiante->recibos()->create($datos_recibo);

        foreach ($request->get('pagos') as $pago) {
            $recibo->pagos()->create($pago);
        }

        return response($recibo->id, 200);
    }

    public function destroy(Recibo $recibo)
    {
        $recibo->fue_anulado = true;
        $recibo->save();
    }

    public function show(Recibo $recibo)
    {


        if (Storage::disk('public')->exists('pagos/' . $recibo->id . '.pdf')) {
            //return redirect('/pagos/verificar/' . $recibo->id);
        }
        $usuario = Auth::user();
        $pdf = PDF::loadView('pagos.print', compact('recibo', 'usuario'))->setPaper('A5');
        $pdf->name = $recibo->id;
        //  $pdf->save(storage_path('app/public/pagos/' . $pdf->name . '.pdf'));
        return $pdf->inline();

        return redirect(route('estudiantes.pagos.verificar', $pdf->name));
    }


    public function verificar($uuid)
    {
        $constancia = Recibo::where('id', $uuid)->firstOrFail();
        $archivo = storage_path('app/public/pagos/' . $constancia->id . '.pdf');
        return response()->file($archivo);
    }
}
