@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')

@section('content_header')
    <h2 class="m-0 text-dark">Listado de estudiantes</h2>
    <h2 class="m-0 text-dark">{{ $curso->unidad_didactica->nombre }}</h2>
@stop

@section('content')
    <div class="row" id="app">
        <div class="col-12 col-sm-10 col-md-6">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-12 d-flex justify-content-between">
                            <a href="{{ route('cursos.index') }}" class="btn btn-primary">
                                <i class="fa fa-arrow-left mr-2"></i> Volver a la lista de cursos
                            </a>
                            <a href="{{ route('cursos.reportes.estudiantes', [$curso, 'pdf' => 1]) }}" class="btn btn-primary">
                                <i class="fa fa-print mr-2"></i> Imprimir
                            </a>
                        </div>

                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-12 col-sm-6 col-md-4">
                            <b>Docente:</b>
                            {{ $curso->docente?->persona?->nombre_completo }}
                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <b>Periodo:</b>
                            {{ $curso->periodo?->nombre }}
                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <b>Rubro-Turno:</b>
                            {{ $curso->rubro_turno?->nombre }}
                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <b>Grupo:</b>
                            {{ $curso->grupo?->nombre }}
                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <b>Horario:</b>
                            <ul>
                                @foreach ($curso->horario_agrupado as $horario)
                                    <li><b>{{ $horario['dias'] }}</b>: {{ $horario['hora'] }}</li>
                                @endforeach
                            </ul>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <b>Cupos:</b>
                            {{ $curso->cupo_maximo }}
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <h4>Estudiantes</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <table class="table table-bordered table-hover">
                                <thead class="bg-gradient-info">
                                    <tr>
                                        <th>Código</th>
                                        <th>N° - Celular</th>
                                        <th>Nombres y apellidos</th>
                                        <th class="text-center">-</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($curso->matricula_unidades as $mu)
                                        @if ($mu->matricula)
                                            <tr>
                                                <td>{{ $mu->matricula?->codigo }}</td>
                                                <td>{{ $mu->matricula?->estudiante?->persona?->telefono }}</td>
                                                <td>{{ $mu->matricula?->estudiante?->persona?->nombre_completo }}</td>
                                                <td class="text-center">
                                                    <form action="{{ route('matricula_unidad.destroy', $mu) }}" method="POST"
                                                          onsubmit="return confirm('¿Confirma eliminar este registro?');">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button class="btn btn-danger btn-sm">
                                                            <i class="fa fa-remove mr-2"></i> Retirar
                                                        </button>
                                                    </form>
                                                </td>
                                            </tr>
                                        @endif
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
