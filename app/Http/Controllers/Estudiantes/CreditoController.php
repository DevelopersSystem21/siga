<?php

namespace App\Http\Controllers\Estudiantes;

use App\Http\Controllers\Controller;
use App\Models\Credito;
use App\Models\Estudiante;
use App\Models\Pago;
use App\Models\Recibo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use PDF;

class CreditoController extends Controller
{
    public function store(Estudiante $estudiante, Request $request)
    {
        $datos_recibo = $request->get('credito');
        $datos_recibo['numero'] = $estudiante->creditos()->max('numero') + 1;
        $credito = $estudiante->creditos()->create($datos_recibo);

        foreach ($request->get('pagos') as $pago) {
            $credito->pagos()->create($pago);
        }

        foreach ($datos_recibo['cuotas'] as $cuota) {
            $credito->cuotas()->create($cuota);
        }

        return response('Correcto', 200);
    }

    public function destroy(Credito $credito)
    {
        $credito->fue_anulado = true;
        $credito->save();
    }

    public function update(Credito $credito)
    {
        $credito->fue_pagado = true;
        $credito->save();
    }

    public function show(Credito $credito)
    {


        if (Storage::disk('public')->exists('creditos/' . $credito->id . '.pdf')) {
            //return redirect('/pagos/verificar/' . $recibo->id);
        }
        $usuario = Auth::user();
        $pdf = PDF::loadView('creditos.print', compact('credito', 'usuario'));
        $pdf->name = $credito->id;
        //  $pdf->save(storage_path('app/public/pagos/' . $pdf->name . '.pdf'));
        return $pdf->inline();

        return redirect(route('estudiantes.creditos.verificar', $pdf->name));
    }


    public function verificar($uuid)
    {
        $constancia = Recibo::where('id', $uuid)->firstOrFail();
        $archivo = storage_path('app/public/creditos/' . $constancia->id . '.pdf');
        return response()->file($archivo);
    }

}
