@php
  use Carbon\Carbon;
@endphp

@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')
<link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
<link href="https://cdn.datatables.net/buttons/2.3.6/css/buttons.bootstrap5.min.css" rel="stylesheet"/>
<link href="https://cdn.datatables.net/colreorder/1.6.2/css/colReorder.bootstrap5.min.css" rel="stylesheet"/>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />


@section('content_header')
    <h1 class="m-0 text-dark">Datos Estudiantes</h1>
@stop

@section('content')
    <div class="row">
        <div class="col-12">

            @include('estudiantes.modal_crear_estudiante')
            <div class="row d-flex justify-content-between align-items-center pr-3 mb-3">
                <div class="col-4">
                    <div class="mb-3">
                       <!--<form>
                            <input name="query" class="form-control" id="exampleInputEmail1" placeholder="Buscar">
                        </form>-->
                    </div>
                </div>
                <div class="col-4 d-flex justify-content-end align-items-end align-content-end">
                    <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#modalRegistrarEstudiante">
                        <i class="fa fa-circle-plus mr-2" aria-hidden="true"></i>Agregar Estudiante</button>
                </div>
            </div>
            
            <div class="card p-2">

                <div class="table-responsive">
                    <table class="table mb-2 table-striped table-hover table-sm" id="lista">
                        <thead class="bg-gradient-info">
                            <tr>
                                <th class=".text-dark-emphasis">DNI N°</th>
                                <th class=".text-dark-emphasis">APELLIDOS</th>
                                <th class=".text-dark-emphasis">NOMBRES</th>                                
                                {{-- <th class=".text-dark-emphasis">NACIO</th>                                 --}}
                                {{-- <th class=".text-dark-emphasis">EDAD</th>                                 --}}
                                <th class=".text-dark-emphasis">N° CELULAR</th>
                                {{-- <th class=".text-dark-emphasis">APODERADO</th> --}}
                                <th class="d-flex justify-content-end pr-5">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($estudiantes as $estudiante)
                                <tr>
                                    <td>{{ $estudiante->personas->numiden }}</td>
                                    <td>{{ $estudiante->personas->apellidos }}</td>
                                    <td>{{ $estudiante->personas->nombre }}</td>                                    
                                    {{-- <td>{{ $estudiante->birthdate }}</td> --}}
                                    {{-- <td>{{ Carbon::parse($estudiante->birthdate)->age }}</td>                                     --}}
                                    <td>{{ $estudiante->personas->telefono }}</td>
                                    {{-- <td>{{ $estudiante->apoderados->personas->nombre }} {{ $estudiante->apoderados->personas->apellidos }}</td> --}}
                                    <td class="d-flex justify-content-end align-items-center">
                                        <div class="">
                                            <button class="btn btn-primary btn-sm " data-bs-toggle="modal"
                                                    data-bs-target="#modalEditar{{ $estudiante->personas->id }}" title="Editar">
                                                <i class="fas fa-fw fa-pen" aria-hidden="true"></i>
                                            </button>
                                            <a href="{{ route('estudiantes.show', $estudiante->id) }}" class="btn btn-success btn-sm" title="Ver">
                                                <i class="fas fa-fw fa-eye" aria-hidden="true"></i>
                                            </a>
                                            <form id="deleteForm" action="{{ route('estudiantes.destroy', $estudiante) }}" method="POST" style="display: inline;">
                                                @csrf
                                                @method('DELETE')
                                                <button class="btn btn-danger btn-sm  deleteButton" title="Eliminar" id="deleteItem">
                                                    <i class="fas fa-fw fa-trash" aria-hidden="true"></i>
                                                </button>
                                            </form>
                                        </div>
                                       
                                    </td>
                                    <!-- Modal -->
                                    <div class="modal fade" id="modalEditar{{ $estudiante->personas->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-xl">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar Estudiante</h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <form action="{{ route('estudiantes.update', $estudiante->personas) }}" method="POST">

                                                        @csrf
                                                        @method('put')
                                                        <div class="row">
                                                            <div class="col-4">
                                                                <div class="mb-2">
                                                                    <label for="descripcion" class="form-label">Nombre <span class="text-danger">*</span></label>
                                                                    <input type="text" class="form-control" name="nombre" autocomplete="off" required
                                                                           value="{{ $estudiante->personas->nombre }}">
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="fecha-ini" class="form-label">Apellidos <span class="text-danger">*</span></label>
                                                                    <input type="text" class="form-control" name="apellidos" required
                                                                           value="{{ $estudiante->personas->apellidos }}">
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="fecha-fin" class="form-label">Sexo <span class="text-danger">*</span></label>
                                                                    <select class="form-select" name="sexo">
                                                                        <option selected>Select Option</option>
                                                                        <option value="masculino" @if ($estudiante->personas->sexo === 'masculino') selected @endif>Masculino</option>
                                                                        <option value="femenino" @if ($estudiante->personas->sexo === 'femenino') selected @endif>Femenino</option>
                                                                    </select>
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="fecha-fin" class="form-label">Direccion <span class="text-danger">*</span></label>
                                                                    <input type="text" class="form-control" name="direccion"
                                                                           value="{{ $estudiante->personas->direccion }}" autocomplete="off" required>
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="fecha-fin" class="form-label">Telefono <span class="text-danger">*</span></label>
                                                                    <input type="text" class="form-control" name="telefono"
                                                                           value="{{ $estudiante->personas->telefono }}" autocomplete="off" required>
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="fecha-ini" class="form-label">Email <span class="text-danger">*</span></label>
                                                                    <input type="email" class="form-control" name="email" required
                                                                           value="{{ $estudiante->personas->email }}" autocomplete="off">
                                                                </div>
                                                            </div>
                                                            <div class="col-4">
                                                                <div class="mb-2">
                                                                    <label for="fecha-fin" class="form-label">Tipo Documento <span class="text-danger">*</span></label>
                                                                    <select class="form-select" name="id_tipo_identificacion" id="id_tipo_identificacion" required>
                                                                        <option selected>Select Option</option>
                                                                        @foreach ($tipo_identificacions as $tipo_identificacion)
                                                                            <option value="{{ $tipo_identificacion->id }}"
                                                                                    @if ($tipo_identificacion->id == $estudiante->personas->id_tipo_identificacion) selected @endif>{{ $tipo_identificacion->nombre }}</option>
                                                                        @endforeach
                                                                    </select>
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="fecha-ini" class="form-label">Num. Identificacion <span class="text-danger">*</span></label>
                                                                    <input type="text" class="form-control" name="numiden" required
                                                                           value="{{ $estudiante->personas->numiden }}" autocomplete="off">
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="idpais" class="form-label">País</label>
                                                                    <select class="form-select" name="idpais" id="idpais" onchange="showDepartamentos2(this)">
                                                                        <option selected value="">Select Option</option>
                                                                        @foreach ($paises as $pais)
                                                                            <option value="{{ $pais->idpais }}">{{ $pais->nompais }}</option>
                                                                        @endforeach
                                                                    </select>
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="iddep" class="form-label">Departamento</label>
                                                                    <select class="form-select iddepEdit" name="iddep" onchange="showCiudades2(this)"></select>
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="idCiudad" class="form-label">Ciudad</label>
                                                                    <select class="form-select id_ciudadEdit" name="id_ciudad"></select>
                                                                </div>


                                                            </div>
                                                            <div class="col-4">
                                                                <div class="mb-2">
                                                                    <label for="birthdate" class="form-label">Fecha Nacimiento <span class="text-danger">*</span></label>
                                                                    <input type="date" class="form-control" name="birthdate" autocomplete="off">
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="fecha-ini" class="form-label">Codigo <span class="text-danger">*</span></label>
                                                                    <input type="text" class="form-control" name="codigo" required
                                                                           value="{{ $estudiante->codigo }}">
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="fecha-ini" class="form-label">Estado <span class="text-danger">*</span></label>
                                                                    <div class="d-flex ml-2">
                                                                        <div class="form-check mr-3">
                                                                            <input class="form-check-input" type="radio" name="estado" id="activo"
                                                                                   value="activo" @if ($estudiante->estado === 'activo') checked @endif>
                                                                            <label class="form-check-label" for="activo">
                                                                                Activo
                                                                            </label>
                                                                        </div>
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="radio" name="estado" id="inactivo"
                                                                                   value="inactivo" @if ($estudiante->estado === 'inactivo') checked @endif>
                                                                            <label class="form-check-label" for="inactivo">
                                                                                Inactivo
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="fecha-fin" class="form-label">Programa Academico <span class="text-danger">*</span></label>
                                                                    <select class="form-select" name="id_programa_academico" id="id_programa_academico" required>
                                                                        <option selected>Select Option</option>
                                                                        @foreach ($programa_academicos as $programa_academico)
                                                                            <option value="{{ $programa_academico->id }}" @if ($programa_academico->id == $estudiante->id_programa_academico) selected @endif>
                                                                                {{ $programa_academico->nombre }}
                                                                            </option>
                                                                        @endforeach
                                                                    </select>
                                                                </div>
                                                                {{-- <div class="mb-2">
                                                                    <label for="id_apoderado" class="form-label">Apoderado</label>
                                                                    <select class="form-select example-editar" name="id_apoderado">
                                                                        <option value="">Selecciona Apoderado</option>
                                                                        @foreach ($personas as $persona)
                                                                        <option value="{{$persona->id }}">{{ $persona->nombre }} {{ $persona->apellidos }}</option>
                                                                        @endforeach
                                                                    </select>
                                                                </div> --}}
                                                            </div>
                                                        </div>

                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                            <button type="submit" class="btn btn-primary">Modificar</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
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

    <script>
        $(document).ready(function () {
            $('#lista').DataTable({responsive:true,autowidth:false,
                "language":{"search": "Buscar estudiante",
                "lengthMenu":"Mostrar _MENU_ registros por página",
                "info":"Mostrando página _PAGE_ de _PAGES_",
                "paginate":{
                            "previous":"Anterior",
                            "next":"Siguiente",
                            "first":"Primero",
                            "last": "Último"
                }}
            });
            // Para el modalRegistrarEstudiante
$('.example-registrar').select2({
    dropdownParent: $('#modalRegistrarEstudiante'),
    placeholder: 'escriba DNI Apoderado',
    allowClear: true,
    minimumInputLength: 2,
    ajax: {
        url: '/buscar-personas',
        dataType: 'json',
        delay: 250,
        data: function(params) {
            return {
                dni: params.term
            };
        },
        processResults: function(data) {
            return {
                results: data
            };
        },
        cache: true
    }
});

// Para el modalEditar
$('.example-editar').select2({
    dropdownParent: $('#modalEditar'),
    placeholder: 'escriba DNI Apoderado',
    allowClear: true,
    minimumInputLength: 2,
    ajax: {
        url: '/buscar-personas',
        dataType: 'json',
        delay: 250,
        data: function(params) {
            return {
                dni: params.term
            };
        },
        processResults: function(data) {
            return {
                results: data
            };
        },
        cache: true
    }
});

        $('.apoderadoEdit').select2({
                dropdownParent: $('#modalEditar'),
            placeholder: 'escriba DNI Apoderado',
            allowClear: true,
            minimumInputLength: 2, // Mínimo de caracteres para empezar a buscar
            ajax: {
                url: '/buscar-personas', // Ruta en Laravel para buscar personas por DNI
                dataType: 'json',
                delay: 250,
                data: function(params) {
                    return {
                        dni: params.term // Término de búsqueda proporcionado por el usuario
                    };
                },
                processResults: function(data) {
                    return {
                        results: data
                    };
                },
                cache: true
            }
        });
        });
    </script>
   
    <script>
        const numidenInput = document.querySelector("[name='numiden']");
        const codeInput = document.querySelector("[name='codigo']");

        numidenInput.addEventListener("input", function() {
        codeInput.value = numidenInput.value.toUpperCase();
        });
        
    </script>
    <script>
        function validateForm() {
            var selectedOption = document.getElementById("mySelect").value;
            if (selectedOption === "") {
                alert("Por favor, seleccione el tipo de identificación");
                return false;
            }
            return true;
            }
    </script>
@stop
