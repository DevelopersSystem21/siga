@extends('layouts.bootstrap')

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
                                    {{ $curso->periodo->nombre }}
                                </div>
                                <div class="col-12">
                                    <b>Docente: </b><br>
                                    {{ $curso->docente->persona->nombre_completo }}
                                </div>
                                <div class="col-12">
                                    <b>Rubro: </b><br>
                                    {{ $curso->rubro_turno->rubro->nombre }}
                                </div>
                                <div class="col-12">
                                    <b>Turno: </b><br>
                                    {{ $curso->rubro_turno->turno->nombre }}
                                </div>
                                <x-ui.usako-input sm="12" md="12" xxl="12" v-model="ambiente_id" name="id_ambiente" label="Ambiente" type="select" :options="$ambientes">
                                </x-ui.usako-input>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-12">
                                    <h5>Horarios programados</h5>
                                </div>
                                <div class="col-12">
                                    <table class="table table-hover">
                                        <thead class="bg-gradient-info">
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
                                        <div class="alert alert-success h6">
                                            {{ session('status') }}
                                        </div>
                                    </div>
                                </div>
                            @endif
                        </div>
                        <div class="col-12 col-md-9" id="calendar">

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
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="{{ route('cursos.horarios.store', $curso) }}" method="POST">
                            @csrf
                            <div class="row">
                                <x-ui.usako-input sm="12" md="12" xxl="12" v-model="ambiente_id" name="id_ambiente" label="Ambiente" type="select" :options="$ambientes"
                                                  required>
                                </x-ui.usako-input>
                                <x-ui.usako-input name="inicio" label="Desde" type="time" id="inicio"></x-ui.usako-input>
                                <x-ui.usako-input name="fin" label="Hasta" type="time" id="fin"></x-ui.usako-input>
                                <x-ui.usako-input name="dia" label="Día" type="text" id="dia" readonly></x-ui.usako-input>
                                <x-ui.usako-input name="dia2" label="Día" type="hidden"></x-ui.usako-input>
                                <x-ui.usako-input name="dia_id" type="hidden" id="dia_id"></x-ui.usako-input>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
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

    <script src='https://cdn.jsdelivr.net/npm/@fullcalendar/core@6.1.8/index.global.min.js'></script>
    <script src='https://cdn.jsdelivr.net/npm/@fullcalendar/web-component@6.1.8/index.global.min.js'></script>
    <script src='https://cdn.jsdelivr.net/npm/@fullcalendar/interaction@6.1.8/index.global.min.js'></script>
    <script src='https://cdn.jsdelivr.net/npm/@fullcalendar/daygrid@6.1.8/index.global.min.js'></script>
    <script src='https://cdn.jsdelivr.net/npm/@fullcalendar/timegrid@6.1.8/index.global.min.js'></script>

    <!--script src='https://cdn.jsdelivr.net/npm/@fullcalendar/core/locales/es.global.js'></!--script-->


    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue@2.7.14/dist/vue.js"></script>

    <script>
        new Vue({
            el: "#app",
            data: {
                ambiente_id: ''
            }
        });
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                themeSystem: 'bootstrap5',
                locale: 'es',
                initialView: 'timeGridWeek',
                selectable: true,
                firstDay: 1,
                headerToolbar: {
                    left: '',
                    center: '',
                    right: '' // user can switch between the two
                },
                dayHeaderFormat: {
                    weekday: 'long'
                },
                slotLabelFormat: {
                    hour: '2-digit',
                    minute: '2-digit',
                    meridiem: 'short',
                    hour12: true
                },
                allDaySlot: false,
                events: [
                    @foreach ($curso->horarios as $horario)
                        {
                            id: 'event{{ $horario->id }}',
                            title: '{{ $horario->unidad_aperturada->unidad_didactica->nombre }} - {{ $horario->ambiente->nombre }} - {{ $curso->docente->persona->nombre_completo }} ',
                            start: '{{ $horario->inicio_completo }}',
                            end: '{{ $horario->fin_completo }}',
                            docente: '{{ $curso->docente->persona->nombre_completo }}',
                            editable: true
                        },
                    @endforeach

                ],

                dateClick: function(info) {},
                select: function(info) {

                    const weekday = ["Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"];


                    let inicio = new Date(Date.parse(info.startStr));
                    $("#inicio").val(inicio.toLocaleTimeString());

                    let fin = new Date(Date.parse(info.endStr));
                    $("#fin").val(fin.toLocaleTimeString());

                    let day = weekday[inicio.getUTCDay()];
                    $("#dia").val(day);
                    $("#dia_id").val(inicio.getUTCDay());

                    $("#modalRegistrar").modal('show');
                }
            });
            calendar.render();
        });
    </script>
    <script>
        var deleteButtons = document.getElementsByClassName('deleteButton');
        for (var i = 0; i < deleteButtons.length; i++) {
            deleteButtons[i].addEventListener('click', function(event) {
                event.preventDefault(); // Evita el envío del formulario por defecto

                var button = this;
                Swal.fire({
                    title: '¿Estás seguro que deseas eliminar el registro?',
                    icon: 'error',
                    showCancelButton: true,
                    confirmButtonText: 'Sí, eliminar',
                    cancelButtonText: 'Cancelar',
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#198754',
                }).then(function(result) {
                    if (result.isConfirmed) {
                        // Si se confirma la eliminación, envía el formulario
                        button.closest('form').submit();
                    }
                });
            });
        }
    </script>
@endsection
