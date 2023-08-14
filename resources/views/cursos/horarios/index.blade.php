@extends('adminlte::page')

@section('title', 'SIGA CEAM')

@section('content_header')
    <h1 class="m-0 text-dark">Programación de horarios <br> <small>{{ $curso->unidad_didactica->nombre }}</small></h1>
@stop

@section('content')
    <div class="row" id="app">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="row g-3">
                        <div class="col-12 col-md-3">
                            <div class="row g-3">
                                <div class="col-12">
                                    <h5>Datos de la unidad aperturada</h5>
                                </div>
                                <div class="col-12">
                                    <b>Periodo: </b><br>
                                    {{ $curso->periodo?->nombre }}
                                </div>
                                <div class="col-12">
                                    <b>Docente: </b><br>
                                    {{ $curso->docente?->persona?->nombre_completo }}
                                </div>
                                <div class="col-12">
                                    <b>Rubro: </b><br>
                                    {{ $curso->rubro_turno?->rubro?->nombre }}
                                </div>
                                <div class="col-12">
                                    <b>Turno: </b><br>
                                    {{ $curso->rubro_turno?->turno?->nombre }}
                                </div>
                                <x-ui.usako-input sm="12" md="12" xxl="12" v-model="ambiente_id" name="id_ambiente" label="Ambiente" type="selectb4" :options="$ambientes">
                                </x-ui.usako-input>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-12">
                                    <h5>Horarios programados</h5>
                                </div>
                                <div class="col-12 table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>Ambiente</th>
                                                <th>Día</th>
                                                <th>Horario</th>
                                                <th class="text-center">-</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($curso->horarios as $horario)
                                                <tr>
                                                    <td>{{ $horario->ambiente->nombre }}</td>
                                                    <td>{{ $horario->dia }}</td>
                                                    <td>{{ $horario->inicio->format('H:i a') }} - {{ $horario->fin->format('H:i a') }}</td>
                                                    <td class="text-center">
                                                        <form id="deleteForm" action="{{ route('cursos.horarios.destroy', $horario) }}" method="POST" style="display: inline;">
                                                            @csrf
                                                            @method('DELETE')
                                                            <button class="btn btn-danger btn-sm deleteButton" title="Eliminar">
                                                                <i class="fas fa-fw fa-trash" aria-hidden="true"></i>
                                                            </button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            @if (session('status'))
                                <div class="row d-flex justify-content-center ">
                                    <div class="col-12">
                                        <div class="alert alert-{{session('type')}} h6">
                                            {{ session('status') }}
                                        </div>
                                    </div>
                                </div>
                            @endif
                        </div>
                        <div class="col-12 col-md-9" id="calendar">
                            <div class="row">
                                <div class="col-12">
                                    <button class="btn" :class="{ 'btn-outline-primary': tipo === 'detallado', 'btn-primary': tipo === 'general' }" @click="cambiarTipo('general')">Vista
                                        general</button>
                                    <button class="btn" :class="{ 'btn-outline-primary': tipo === 'general', 'btn-primary': tipo === 'detallado' }" @click="cambiarTipo('detallado')">Vista
                                        detallada</button>
                                </div>
                                <div class="col-12" v-if="tipo === 'general'">
                                    <usako-calendar :events="@js($events)"></usako-calendar>
                                </div>
                                <div class="col-12" v-if="tipo === 'detallado'">
                                    <usako-calendar-all :events="@js($horarios_semanales)"></usako-calendar-all>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="modalRegistrar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Datos</h1>
                        <button type="button" class="btn" data-dismiss="modal" aria-label="Close">
                            <i class="fa fa-close"></i>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="{{ route('cursos.horarios.store', $curso) }}" method="POST">
                            @csrf
                            <div class="row">
                                <x-ui.usako-input sm="12" md="12" xxl="12" v-model="ambiente_id" name="id_ambiente" label="Ambiente" type="selectb4" :options="$ambientes"
                                                  required>
                                </x-ui.usako-input>
                                <x-ui.usako-input name="inicio" label="Desde" type="time" id="inicio"></x-ui.usako-input>
                                <x-ui.usako-input name="fin" label="Hasta" type="time" id="fin"></x-ui.usako-input>
                                <x-ui.usako-input name="dia" label="Día" type="text" id="dia" readonly></x-ui.usako-input>
                                <x-ui.usako-input name="dia2" label="Día" type="hidden"></x-ui.usako-input>
                                <x-ui.usako-input name="dia_id" type="hidden" id="dia_id"></x-ui.usako-input>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-12">
                                    <h5>Repetir</h5>
                                </div>
                                <div class="col-4">
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" name="dias[]" :value="1" v-model="dias" id="switchDia1">
                                        <label class="custom-control-label" for="switchDia1">Lunes</label>
                                    </div>
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" name="dias[]" :value="4" v-model="dias" id="switchDia4">
                                        <label class="custom-control-label" for="switchDia4">Jueves</label>
                                    </div>
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" name="dias[]" :value="7" v-model="dias" id="switchDia7">
                                        <label class="custom-control-label" for="switchDia7">Domingo</label>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input"  name="dias[]" :value="2" v-model="dias" id="switchDia2">
                                        <label class="custom-control-label" for="switchDia2">Martes</label>
                                    </div>
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input"  name="dias[]" :value="5" v-model="dias" id="switchDia5">
                                        <label class="custom-control-label" for="switchDia5">Viernes</label>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input"  name="dias[]" :value="3" v-model="dias" id="switchDia3">
                                        <label class="custom-control-label" for="switchDia3">Miércoles</label>
                                    </div>
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input"  name="dias[]" :value="6" v-model="dias" id="switchDia6">
                                        <label class="custom-control-label" for="switchDia6">Sábado</label>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                <button type="submit" class="btn btn-primary">Registrar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

@section('js')

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="{{ mix('js/app/cursos/horarios/index.js') }}"></script>
@endsection
