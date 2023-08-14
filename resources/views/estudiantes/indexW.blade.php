@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')

@section('content_header')
    <h1 class="m-0 text-dark">Estudiantes</h1>
@stop

@section('content')
    <div class="row">
        <div class="col-12">

            @include('estudiantes.modal_crear_estudiante')
            <div class="row d-flex justify-content-between align-items-center pr-3">
                <div class="col-4">
                    <div class="mb-3">
                        <form>
                            <input name="query" class="form-control" id="exampleInputEmail1" placeholder="Buscar">
                        </form>
                    </div>
                </div>
                <div class="col-4 d-flex justify-content-end">
                    <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#modalRegistrarEstudiante">
                        <i class="fa fa-circle-plus mr-2" aria-hidden="true"></i>Agregar Estudiante</button>
                </div>
            </div>
            <div class="row">

                @foreach ($estudiantes as $estudiante)
                    <div class="col-md-4">

                        <div class="card card-widget widget-user">

                            <div class="widget-user-header bg-primary">
                                <h3 class="widget-user-username">{{ $estudiante->persona->nombre }}</h3>
                                <h5 class="widget-user-desc">{{ $estudiante->persona->apellidos }}</h5>
                            </div>
                            <div class="widget-user-image">
                                @if ($estudiante->foto)
                                    <img src="/storage/fotos/{{ $estudiante->foto }}" class="img-circle elevation-2" style="max-height: 90px !important" alt="...">
                                @else
                                    <img src="/vendor/adminlte/dist/img/{{$estudiante->persona->sexo === 'masculino'?'perfil.png':'perfil_f.jpeg'}}" class="img-circle elevation-2" alt="...">
                                @endif
                            </div>
                            <div class="card-footer">
                                <div class="row">
                                    <div class="col-sm-8 border-right">
                                        <div class="description-block">
                                            <h5 class="description-header">{{ $estudiante->programa_academico?->nombre }}</h5>
                                            <span class="description-text">Programa</span>
                                        </div>
                                    </div>

                                    <div class="col-sm-4">
                                        <div class="description-block">
                                            <a href="{{ route('estudiantes.show', $estudiante) }}" class="btn btn-outline-primary">Ver</a>
                                        </div>

                                    </div>

                                </div>

                            </div>
                        </div>

                    </div>
                @endforeach
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script>
            function showDepartamentos(id) {
                $.get("/api/selectdepartamentos/" + id, function(departamentos) {
                    let selectDepartamento = document.querySelector("#iddep");
                    selectDepartamento.innerHTML = "";

                    // Agregar opción "Seleccione"
                    let selectOption = document.createElement("option");
                    selectOption.setAttribute("value", "");
                    selectOption.innerHTML = "Seleccione";
                    selectDepartamento.appendChild(selectOption);

                    departamentos.forEach(departamento => {
                        let option = document.createElement("option");
                        option.setAttribute("value", departamento.iddep);
                        option.innerHTML = departamento.nomdepa;
                        selectDepartamento.appendChild(option);
                    });
                });
            }

            function showCiudades(id) {
                $.get("/api/selectciudades/" + id, function(ciudades) {
                    let selectCiudad = document.querySelector("#id_ciudad");
                    selectCiudad.innerHTML = "";
                    ciudades.forEach(ciudad => {
                        let option = document.createElement("option");
                        option.setAttribute("value", ciudad.idCiudad);
                        option.innerHTML = ciudad.nomciu;
                        selectCiudad.appendChild(option);
                        //console.log(ciudad.idCiudad,ciudad.nomciu);
                    });
                });
            }
        </script>

        <script>
            function showDepartamentos2(select) {
                var idpais = select.value;
                var selectDepartamento = select.parentNode.nextElementSibling.querySelector('.iddepEdit');
                selectDepartamento.innerHTML = "";

                var selectOption = document.createElement("option");
                selectOption.setAttribute("value", "");
                selectOption.innerHTML = "Seleccione";
                selectDepartamento.appendChild(selectOption);

                $.get("/api/listdepartamentos/" + idpais, function(departamentos) {
                    departamentos.forEach(function(departamento) {
                        var option = document.createElement("option");
                        option.setAttribute("value", departamento.iddep);
                        option.innerHTML = departamento.nomdepa;
                        selectDepartamento.appendChild(option);
                    });
                });
            }

            function showCiudades2(select) {
                var iddep = select.value;
                var selectCiudad = select.parentNode.nextElementSibling.querySelector('.id_ciudadEdit');
                console.log(selectCiudad);
                if (selectCiudad) {
                    selectCiudad.innerHTML = "";

                    $.get("/api/listciudades/" + iddep, function(ciudades) {
                        ciudades.forEach(function(ciudad) {
                            var option = document.createElement("option");
                            option.setAttribute("value", ciudad.idCiudad);
                            option.innerHTML = ciudad.nomciu;
                            selectCiudad.appendChild(option);
                        });
                    });
                } else {
                    console.error("No se pudo encontrar el elemento selectCiudad.");
                }
            }
        </script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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

        @if (session('error'))
            <script>
                Swal.fire({
                    title: 'Error',
                    text: '{{ session('error') }}',
                    icon: 'error'
                });
            </script>
        @endif
    @stop
