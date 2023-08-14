@extends('layouts.clean')

@section('content')
    <div class="row">
    </div>

    <x-usako-logo title="LISTA DE ESTUDIANTES"></x-usako-logo>
    <div class="row">
        <div class="col-xs-4">
            <b>Curso:</b>
            {{ $curso->unidad_didactica?->nombre }}
        </div>
        <div class="col-xs-4">
            <b>Docente:</b>
            {{ $curso->docente?->persona?->nombre_completo }}
        </div>
        <div class="col-xs-4">
            <b>Periodo:</b>
            {{ $curso->periodo?->nombre }}
        </div>
        <div class="col-xs-4">
            <b>Rubro-Turno:</b>
            {{ $curso->rubro_turno?->nombre }}
        </div>
        <div class="col-xs-4">
            <b>Grupo:</b>
            {{ $curso->grupo?->nombre }}
        </div>
        <div class="col-xs-4">
            <b>Horario:</b>
            <ul>
                @foreach ($curso->horario_agrupado as $horario)
                    <li>{{ $horario['dias'] }}: {{ $horario['hora'] }}</li>
                @endforeach
            </ul>
        </div>
        <div class="col-xs-4">
            <b>Cupos:</b>
            {{ $curso->cupo_maximo }}
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <h4>Estudiantes</h4>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <table class="table table-bordered table-hover">
                <thead class="bg-gradient-info">
                    <tr>
                        <th>Código</th>
                        <th>N°- Celular</th>
                        <th>Nombres y apellidos</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($curso->matricula_unidades as $mu)
                        @if ($mu->matricula)
                            <tr>
                                <td>{{ $mu->matricula?->codigo }}</td>
                                <td>{{ $mu->matricula?->estudiante?->persona?->telefono }}</td>
                                <td>{{ $mu->matricula?->estudiante?->persona?->nombre_completo }}</td>

                            </tr>
                        @endif
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection
