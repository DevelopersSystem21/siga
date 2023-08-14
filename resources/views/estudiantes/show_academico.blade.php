@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')
@section('content_header')
    {{-- <h1 class="m-0 text-dark">Estudiante: {{$estudiante->codigo}}</h1> --}}
@stop

@section('content')
    <div class="row pt-3">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="row g-2">
                        <div class="col-12 col-md-2 col-sm-4 d-flex justify-content-center align-content-center align-items-center ">
                            <div class="w-60">
                                @include('estudiantes._foto_perfil', ['square' => true])
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-sm-8">
                            <h2 class="pt-3 mb-0 text-dark">
                                {{ $estudiante->personas->nombre }} <small class="text-nowrap"> {{ $estudiante->personas->apellidos }}</small></h2>
                            <h5 class="mb-0">DNI: {{ $estudiante->personas->numiden }} </h5>
                            <div class="h4">
                                <button class="btn btn-light px-2 btn-sm" data-bs-toggle="modal" data-bs-target="#modalRegistrarFoto">
                                    <i class="fa fa-camera"></i>
                                </button>
                                <small class="text-muted">{{ $estudiante->programa_academicos->nombre }}</small>
                            </div>
                        </div>
                        <div class="col-12 col-md-4 col-sm-12 d-flex justify-content-end align-items-end">
                            <div class="btn-group">
                                <a href="{{ route('estudiantes.index') }}" class="btn btn-light" title="Ir al listado de estudiantes">
                                    <i class="fa fa-list fs-5" aria-hidden="true"></i>
                                </a>
                                <button class="btn btn-primary">
                                    <a class="text-light text-decoration-none" href="{{ route('estudiantes.create') }}"><i class="fa fa-plus mr-2 fs-5 text-light" aria-hidden="true"></i>Registrar estudiante
                                    </a>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @include('estudiantes.modal_foto')
        </div>
    </div>

    <div class="row-fluid bg-white rounded border">
        <nav>
            <div class="nav nav-tabs bg-secondary  rounded-top" id="nav-tab" role="tablist">
                <a href="{{ route('estudiantes.show', $estudiante) }}" class="nav-link  btn-primary text-white" id="nav-home-tab" data-bs-target="#nav-home" aria-controls="nav-home"
                   aria-selected="true">Informacion Personal</a>
                <a href="{{ route('estudiantes.showAcademico', $estudiante) }}" class="nav-link active btn-primary text-white"
                   id="nav-profile-tab" data-bs-target="#nav-profile" aria-controls="nav-profile"
                   aria-selected="false">Informacion Academica</a>
                <a href="{{ route('estudiantes.showFinanciero', $estudiante) }}" class="nav-link  btn-primary text-white" id="informacion_financiera-tab" data-bs-target="#informacion_financiera"
                   aria-controls="informacion_financiera"
                   aria-selected="false">Informacion Financiera</a>
                <!--button class="btn btn-secondary dropdown-toggle mr-1" type="button" id="  1" data-bs-toggle="dropdown" aria-expanded="false">Más...</!--button>
                            <ul-- class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                <li><a class="dropdown-item" href="#">Acción</a></li>
                                <li><a class="dropdown-item" href="#">Otra acción</a></li>
                                <li><a class="dropdown-item" href="#">Algo más aqui</a></li>
                            </ul-->
            </div>
        </nav>
        <div class="container p-3">
            <div class="tab-content bg-white" id="nav-tabContent">
                <div class="tab-pane fade" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0">
                </div>
                <div class="tab-pane fade show active" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" tabindex="0">
                    @include('estudiantes.show._informacion_academica')
                </div>
                <div class="tab-pane fade" id="informacion_financiera" role="tabpanel" aria-labelledby="informacion_financiera-tab" tabindex="0">
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="/vendor/dropzone/dropzone.css">
    <script src="/vendor/dropzone/dropzone.js"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.12.1/dist/cdn.min.js"></script>


@stop
