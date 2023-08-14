@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')

@section('content_header')
    <h1 class="m-0 text-dark">Registro de asistencias</h1>
@endsection

@section('content')
    <div class="row" id="app">
        <div class="col-12 col-md-10 col-xxl-8">
            <div class="card">
                <div class="card-body">
                    <form class="row">
                        <x-ui.usako-input type="select" :options="$programas" md="4" v-model="filtros.id_programa" name="id_programa" label="Programa académico"></x-ui.usako-input>
                        <x-ui.usako-input type="select" :options="$rubros_turnos" md="4" v-model="filtros.id_rubro_turno" name="id_rubro_turno" label="Rubro - Turno"></x-ui.usako-input>
                        <x-ui.usako-input type="select" :options="$periodos" md="2" v-model="filtros.id_periodo" name="id_periodo" label="Periodo"></x-ui.usako-input>
                        <div class="col-12 col-md-2">
                            <label>&nbsp;</label><br>
                            <button class="btn btn-primary">Seleccionar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-12 col-md-10 col-xxl-8">
            <div class="card card-primary card-outline card-tabs">
                <div class="card-header p-0 pt-1 border-bottom-0">
                    <ul class="nav nav-tabs" id="custom-tabs-three-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="custom-tabs-three-home-tab" data-toggle="pill" href="#custom-tabs-three-home" role="tab" aria-controls="custom-tabs-three-home"
                               aria-selected="true">Evaluaciones</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill" href="#custom-tabs-three-profile" role="tab" aria-controls="custom-tabs-three-profile"
                               aria-selected="false">Asistencia</a>
                        </li>
                    </ul>
                </div>
                <div class="card-body">
                    <div class="tab-content" id="custom-tabs-three-tabContent">
                        <div class="tab-pane fade show active" id="custom-tabs-three-home" role="tabpanel" aria-labelledby="custom-tabs-three-home-tab">
                            <table class="table table-hover custom-table">
                                <thead class="bg-gradient-info">
                                    <tr>
                                        <th>Código</th>
                                        <th>Nombre</th>
                                        <th>Docente</th>
                                        <th>Horario</th>
                                        <th>Grupo</th>
                                        <th>Matriculados</th>
                                        <th class="text-center">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="curso in cursos">
                                        <td>@{{ curso.codigo }}</td>
                                        <td>@{{ curso.unidad_didactica?.nombre }}</td>
                                        <td>@{{ curso.docente?.persona?.nombre_completo }}</td>
                                        <td>
                                            <b>Desde </b>@{{ curso.inicio }} <br><b>Hasta</b> @{{ curso.fin }}
                                        </td>
                                        <td>@{{ curso.grupo?.nombre }}</td>
                                        <td>@{{ curso.matriculas_count }}</td>
                                        <td class="text-center">
                                            <a :href="'/cursos/' + curso.id + '/notas/crear'" class="btn btn-sm btn-outline-primary">Registrar</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="custom-tabs-three-profile" role="tabpanel" aria-labelledby="custom-tabs-three-profile-tab">
                            <table class="table table-hover">
                                <thead class="bg-gradient-info">
                                    <tr>
                                        <th>Código</th>
                                        <th>Nombre</th>
                                        <th>Docente</th>
                                        <th>Horario</th>
                                        <th>Grupo</th>
                                        <th>Matriculados</th>
                                        <th class="text-center">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="curso in cursos">
                                        <td>@{{ curso.codigo }}</td>
                                        <td>@{{ curso.unidad_didactica?.nombre }}</td>
                                        <td>@{{ curso.docente?.persona?.nombre_completo }}</td>
                                        <td>
                                            <b>Desde </b>@{{ curso.inicio }} <br><b>Hasta</b> @{{ curso.fin }}
                                        </td>
                                        <td>@{{ curso.grupo?.nombre }}</td>
                                        <td>@{{ curso.matriculas_count }}</td>
                                        <td class="text-center">
                                            <a :href="'/cursos/' + curso.id + '/asistencia/crear'" class="btn btn-sm btn-outline-primary">Registrar</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('js')
    <script>
        new Vue({
            el: "#app",
            data: {
                filtros: {
                    id_programa: '{{ $id_programa }}',
                    id_rubro_turno: '{{ $id_rubro_turno }}',
                    id_periodo: '{{ $id_periodo }}',
                },
                cursos: @js($cursos)
            }
        });
    </script>
@endsection
