@extends('layouts.clean')
@section('content')
    <div class="row">
    </div>
    <x-usako-logo title="FICHA DE MATRÍCULA"></x-usako-logo>
    <div class="row">
        <div class="col-xs-12">
            <h4><b>Información personal</b></h4>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-9">
            <div class="row">
                <div class="col-xs-6">
                    <dl class="row">
                        <x-ui.usako-dl label="Nombres" :value="$estudiante->persona?->nombre"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Identificación" :value="$estudiante->persona?->numiden"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Teléfono" :value="$estudiante->persona?->telefono"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Correo electrónico" :value="$estudiante->persona?->email"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Lugar de nacimiento" :value="$estudiante->ciudades?->nomciu"></x-ui.usako-dl>
                    </dl>
                </div>
                <div class="col-xs-6">
                    <dl class="row">
                        <x-ui.usako-dl label="Apellidos" :value="$estudiante->persona?->apellidos"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Sexo" :value="ucfirst($estudiante->persona?->sexo)"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Celular" :value="$estudiante->persona?->celular"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Dirección" :value="$estudiante->persona?->direccion"></x-ui.usako-dl>
                    </dl>
                </div>
            </div>
        </div>
        <div class="col-xs-3 text-center">
            @if ($estudiante->foto)
                <img src="{{ public_path() }}/storage/fotos/{{ $estudiante->foto }}" class="profile-user-img" style="width: 140px; max-heigth: 320px">
            @else
                <img src="{{ public_path() }}/vendor/adminlte/dist/img/{{$estudiante->persona->sexo === 'masculino'?'perfil.png':'perfil_f.jpeg'}}" class="profile-user-img" style="width: 140px; max-heigth: 320px">
            @endif
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-xs-12">
            <h4><b>Información Académica</b></h4>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-9">
            <div class="row">
                <div class="col-xs-6">
                    <dl class="row">
                        <x-ui.usako-dl label="Código de matrícula" :value="$estudiante->matricula?->codigo"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Ciclo" :value="$estudiante->matricula?->ciclo->nombre"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Rubro-turno" :value="$estudiante->matricula?->rubro_turno->nombre"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Grupos" value="-"></x-ui.usako-dl>
                    </dl>
                </div>
                <div class="col-xs-6">
                    <dl class="row">
                        <x-ui.usako-dl label="Fecha Matrícula" :value="$estudiante->matricula?->fecha?->format('d/m/Y')"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Periodo" :value="$estudiante->matricula?->periodo?->nombre"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Programa de Estudio" :value="$estudiante->programa_academico?->nombre"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Observaciones" :value="$estudiante->matricula?->observacion"></x-ui.usako-dl>
                    </dl>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-xs-12">
            <h4><b>Información Apoderado</b></h4>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-9">
            <div class="row">
                <div class="col-xs-6">
                    <dl class="row">
                        <x-ui.usako-dl label="Nombre completo" :value="$estudiante->apoderado?->nombre_completo"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Teléfono" :value="$estudiante->apoderado?->telefono"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Dirección" :value="$estudiante->apoderado?->direccion"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Ocupación" :value="$estudiante->apoderado?->ocupacion"></x-ui.usako-dl>
                    </dl>
                </div>
                <div class="col-xs-6">
                    <dl class="row">
                        <x-ui.usako-dl label="Identificación" :value="$estudiante->apoderado?->identificacion"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Celular" :value="$estudiante->apoderado?->celular"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Email" :value="$estudiante->apoderado?->email"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Parentesco" :value="$estudiante->apoderado?->parentesco"></x-ui.usako-dl>
                    </dl>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-xs-12">
            <h4><b>Unidades Didácticas que se inscribe</b></h4>
        </div>
    </div>
    @if ($estudiante->matricula)
        <div class="row">
            <div class="col-xs-12">
                <table class="table table-condensed table-bordered">
                    <thead>
                        <tr>
                            <th style="width: 25%">Unidad didáctica</th>
                            <th class="text-center" style="width: 10%">Ciclo</th>
                            <th class="text-center" style="width: 10%">Turno</th>
                            <th class="text-center" style="width: 10%">Sesiones</th>
                            <th class="text-center">Horario</th>
                            <th class="text-center">Aula</th>
                            <th class="text-center">Docente</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($estudiante->matricula->matricula_unidades as $mu)
                            <tr>
                                <td>{{ $mu->unidad_aperturada?->unidad_didactica?->nombre }}</td>
                                <td class="text-center">{{ $mu->unidad_aperturada?->unidad_didactica?->ciclo?->nombre }}</td>
                                <td class="text-center">{{ $mu->unidad_aperturada?->rubro_turno?->turno?->nombre }}</td>
                                <td class="text-center">{{ $mu->unidad_aperturada?->unidad_didactica?->cantidad_creditos }}</td>
                                <td class="text-center">
                                    @foreach ($mu->unidad_aperturada->horario_agrupado as $horario)
                                        <b>{{ $horario['dias'] }}:</b> {{ $horario['hora'] }} <br>
                                    @endforeach

                                </td>
                                <td class="text-center">{{ $mu->unidad_aperturada?->horarios->pluck('ambiente.nombre')->unique()->implode(', ') }}</td>
                                <td class="text-center">{{ $mu->unidad_aperturada?->docente?->persona?->nombre_completo }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    @endif
@endsection
@section('css')
    <style>
        th {
            text-align: center;
            background-color: #ddd;
            vertical-align: middle !important;
        }
    </style>
@endsection
