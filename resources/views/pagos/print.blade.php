@extends('layouts.clean')
@section('css')
<style>
    .mar-no {
        margin-top: 0;
        margin-bottom 0;
    }
</style>
@endsection
@section('content')
    <div class="row">
    </div>
    <div class="row">
        <div class="col-xs-8">
            <hr>
        </div>
    </div>
    <div class="row d-flex align-items-center" style="">
        <div class="col-xs-3">
            <img src="{{public_path()}}/images/logo.png" alt="" style="width: 75px">
        </div>
        <div class="col-xs-5">
            <h4 class="mar-no"><b>ASOCIACIÓN DE GUÍAS DE MONTAÑA DEL PERÚ</b></h3>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-8 text-center">
            <h5 class="mar-no">BOLETA DE VENTA ELECTRÓNICA</h4>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-8 text-center">
            <h5 class="mar-no">20364734957</h5>
            <h5 class="mar-no">NRO. 28 - G Z. PARQUE GINEBRA</h5>
            <h5 class="mar-no">43-421811</h5>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-8">
            <hr class="mb-1">
        </div>
    </div>
    <div class="row text-center">
        <div class="col-xs-8">
            <div class="h2">N° {{ $recibo->serie->codigo }} - {{ $recibo->numero }}</div>
            <div class="h4"> - COPIA - </div>
        </div>
    </div>
    <div class="row h5">
        <div class="col-xs-8 ">
            <!-- <x-ui.usako-dlsm label="A nombre" :value="$recibo->nombre"></x-ui.usako-dlsm> !-->
        <x-ui.usako-dlsm label="Estudiante" :value="$recibo->estudiante->persona->nombre_completo"></x-ui.usako-dlsm>
        <x-ui.usako-dlsm label="Identificación" :value="$recibo->estudiante->persona->numiden"></x-ui.usako-dlsm>
        <x-ui.usako-dlsm label="Fecha" :value="$recibo->created_at->format('d/m/Y')"></x-ui.usako-dlsm>
        <x-ui.usako-dlsm label="Código " :value="$recibo->estudiante?->matricula?->codigo"></x-ui.usako-dlsm>
        <x-ui.usako-dlsm label="Programa" :value="$recibo->estudiante?->programa_academico?->nombre"></x-ui.usako-dlsm>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-7 col-xs-offset-1">
            <table class="table table-condensed table-bordered">
                <thead>
                    <tr>
                        <th>CANT</th>
                        <th>DESCRIPCIÓN</th>
                        <th>VALOR</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($recibo->pagos as $pago)
                        <tr>
                            <td>{{ $pago->cantidad }}</td>
                            <td>{{ $pago->producto->nombre }}</td>
                            <td class="text-right">S/{{ $pago->monto }}</td>
                        </tr>
                    @endforeach
                    <tr>
                        <th colspan="2" class="text-right">Subtotal</th>
                        <th class="text-right"><b>S/{{ $recibo->pagos->sum('monto') }}</b></th>
                    </tr>
                    <tr>
                        <th colspan="2" class="text-right">IGV</th>
                        <th class="text-right"><b>S/{{ $recibo->monto_igv }}</b></th>
                    </tr>
                    <tr>
                        <th colspan="2" class="text-right">Subtotal</th>
                        <th class="text-right"><b>S/{{ $recibo->pagos->sum('monto') }}</b></th>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row h5">
        <x-ui.usako-dlsm label="Total Letras" :value="$recibo->monto_en_letras"></x-ui.usako-dlsm>
        <x-ui.usako-dlsm label="Cajero" :value="$usuario->nombre_completo"></x-ui.usako-dlsm>
        <x-ui.usako-dlsm label="Observaciones" :value="$recibo->obervaciones"></x-ui.usako-dlsm>
    </div>
    <div class="row"><br>
        <div class="col-xs-8 text-center">
            {!! QrCode::size(125)->generate(config('app.url') . '/pagos/verificar/' . $recibo->id) !!}
        </div>

    </div><br>
    <div class="row">
        <div class="col-xs-8 text-center">
            {{ $recibo->id }}
            <p>
                Este recibo está sujeto a verificación, consérvelo.
                No hay devolución de dinero.
            </p>
        </div>
    </div>
@endsection
