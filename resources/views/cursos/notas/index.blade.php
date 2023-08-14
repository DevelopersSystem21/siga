@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')

@section('content_header')
    <h1 class="m-0 text-dark">Registro de evaluaciones y asistencias</h1>
@endsection

@section('content')
    <div class="row" id="app">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <x-ui.usako-input type="select2" options="rubros" md="3" v-model="filtros.id_rubro_turno" name="id_rubro_turno" label="Rubro - Turno"></x-ui.usako-input>
                        <x-ui.usako-input type="select2" options="programas" md="3" v-model="filtros.id_programa" name="id_programa" label="Programa académico"></x-ui.usako-input>
                        <x-ui.usako-input type="select2" options="unidades" md="3" v-model="filtros.id_unidad" name="id_unidad" label="Unidad didáctica"></x-ui.usako-input>
                        <x-ui.usako-input type="select2" options="cursos" md="3" v-model="filtros.id_curso" name="id_cursos" label="Unidad aperturada"></x-ui.usako-input>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12">
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
                    <div class="tab-content" id="custom-tabs-three-tabContent" v-if="filtros.id_curso !== ''">
                        <div class="tab-pane fade show active" id="custom-tabs-three-home" role="tabpanel" aria-labelledby="custom-tabs-three-home-tab">
                            <usako-notas :curso_id="filtros.id_curso"></usako-notas>
                        </div>
                        <div class="tab-pane fade" id="custom-tabs-three-profile" role="tabpanel" aria-labelledby="custom-tabs-three-profile-tab">
                            <usako-asistencia :curso_id="filtros.id_curso"></usako-asistencia>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('js')

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="{{ mix('js/app/cursos/notas/index.js') }}"></script>
@endsection
