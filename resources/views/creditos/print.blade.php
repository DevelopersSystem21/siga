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

    <hr>
    <div class="row">
        <div class="col-xs-3 text-right">
            <img src="{{public_path()}}/images/logo.png" alt="" style="width: 125px">
        </div>
        <div class="col-xs-9">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <h3 class="mar-no"><b>ASOCIACIÓN DE GUÍAS DE MONTAÑA DEL PERÚ</b></h3>
                </div>
                <div class="col-xs-12 text-center">
                    <h4 class="mar-no">CRÉDITO</h4>
                </div>
                <div class="col-xs-12 text-center">
                    <h5 class="mar-no">20364734957</h5>
                    <h5 class="mar-no">NRO. 28 - G Z. PARQUE GINEBRA</h5>
                    <h5 class="mar-no">43-421811</h5>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-xs-12 text-center">
            <div class="h2">N° {{ $credito->numero }}</div>
            <div class="h4"> - COPIA - </div>
        </div>
    </div>
    <div class="row h5">
        <div class="row h5">
            <x-ui.usako-dlsm label="Estudiante" :value="$credito->estudiante?->persona?->nombre_completo"></x-ui.usako-dlsm>
            <x-ui.usako-dlsm label="Programa" :value="$credito->estudiante?->programa_academico?->nombre"></x-ui.usako-dlsm>
            <x-ui.usako-dlsm label="Identificación" :value="$credito->estudiante?->persona?->numiden"></x-ui.usako-dlsm>
            <x-ui.usako-dlsm label="Fecha" :value="$credito->created_at->format('d/m/Y')"></x-ui.usako-dlsm>
            <x-ui.usako-dlsm label="Código del estudiante" :value="$credito->estudiante?->matricula?->codigo"></x-ui.usako-dlsm>
        </div>
        <div class="row">
            <div class="col-xs-10 col-xs-offset-1">
                <table class="table table-condensed table-bordered">
                    <thead>
                        <tr>
                            <th>CANT</th>
                            <th>DESCRIPCIÓN</th>
                            <th class="text-right">VALOR</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($credito->pagos as $pago)
                            <tr>
                                <td>{{ $pago->cantidad }}</td>
                                <td>{{ $pago->producto->nombre }}</td>
                                <td class="text-right">S/{{ $pago->monto }}</td>
                            </tr>
                        @endforeach
                        <tr>
                            <th colspan="2" class="text-right">Subtotal</th>
                            <th class="text-right"><b>S/{{ $credito->pagos->sum('monto') }}</b></th>
                        </tr>
                        <tr>
                            <th colspan="2" class="text-right">IGV</th>
                            <th class="text-right"><b>S/{{ $credito->monto_igv }}</b></th>
                        </tr>
                        <tr>
                            <th colspan="2" class="text-right">Subtotal</th>
                            <th class="text-right"><b>S/{{ $credito->pagos->sum('monto') }}</b></th>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row h5">
            <div class="col-xs-10 col-xs-offset-1">
                <h4>Cuotas</h4>
                <table class="table table-condensed table-bordered">
                    <thead>
                        <tr>
                            <th>N°</th>
                            <th>FECHA DE PAGO</th>
                            <th class="text-right">VALOR</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($credito->cuotas as $cuota)
                            <tr>
                                <td>{{ $cuota->numero }}</td>
                                <td>{{ $cuota->fecha->format('d/m/Y') }}</td>
                                <td class="text-right">S/{{ $cuota->monto }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 text-center">
                {!! QrCode::size(125)->generate(config('app.url') . '/credito/verificar/' . $credito->id) !!}
            </div>
            <div class="col-xs-12 text-center">
                {{ $credito->id }}
                <p>
                    Este recibo está sujeto a verificación, consérvelo.
                    No hay devolución de dinero.
                </p>
            </div>
        </div>
    @endsection
