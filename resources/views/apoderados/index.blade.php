@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')

<link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
<link href="https://cdn.datatables.net/buttons/2.3.6/css/buttons.bootstrap5.min.css" rel="stylesheet"/>
<link href="https://cdn.datatables.net/colreorder/1.6.2/css/colReorder.bootstrap5.min.css" rel="stylesheet"/>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
@section('content_header')
    <h1 class="m-0 text-dark">Datos Personales</h1>
@stop

@section('content')
    <div class="row">
        <div class="col-12">
             
            <div class="modal fade" id="modalRegistrar"  aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Estudiante</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="{{route('apoderados.store')}}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-4">
                                    <div class="mb-2">
                                        <label for="descripcion" class="form-label">Nombre <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" name="nombre" autocomplete="off" required>
                                      </div>
                                    <div class="mb-2">
                                      <label for="fecha-ini" class="form-label">Apellidos <span class="text-danger">*</span></label>
                                      <input type="text" class="form-control" name="apellidos" autocomplete="off" required>
                                    </div>
                                    <div class="mb-2">
                                        <label for="fecha-fin" class="form-label" required>Sexo <span class="text-danger">*</span></label>
                                        <select class="form-select" name="sexo">
                                            <option selected>Select Option</option>
                                            <option value="masculino">Masculino</option>
                                            <option value="femenino">Femenino</option>
                                          </select>
                                    </div>
                                    <div class="mb-2">
                                        <label for="fecha-fin" class="form-label" required>Direccion <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" name="direccion" autocomplete="off" required>
                                    </div>
                                </div>
                                <div class="col-4">
                                        <div class="mb-2">
                                            <label for="fecha-fin" class="form-label" required>Telefono <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="telefono" autocomplete="off">
                                        </div>
                                      <div class="mb-2">
                                         <label for="fecha-fin" class="form-label">Doc. Identificacion <span class="text-danger">*</span></label>
                                         <select class="form-select" name="id_tipo_identificacion" id="id_tipo_identificacion" required>
                                            <option selected>Select Option</option>
                                            @foreach ($tipo_identificacions as $tipo_identificacion)
                                            <option value="{{$tipo_identificacion->id}}">{{$tipo_identificacion->nombre}}</option>
                                            @endforeach
                                        </select>
                                      </div>
                                      <div class="mb-2">
                                            <label for="fecha-ini" class="form-label">Num. Identificacion <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="numiden" autocomplete="off" required>
                                       </div>
                                       <div class="mb-2">
                                            <label for="fecha-ini" class="form-label">Email <span class="text-danger">*</span></label>
                                            <input type="email" class="form-control" name="email" autocomplete="off" required>
                                        </div>
                                </div>
                                <div class="col-4">
                                    <div class="mb-2">
                                        <label for="idpais" class="form-label">País <span class="text-danger">*</span></label>
                                        <select class="form-select" name="idpais" id="idpais" required
                                           onchange="showDepartamentos(this.value)">
                                            <option selected>Select Option</option>
                                            @foreach ($paises as $pais)
                                            <option value="{{$pais->idpais}}">{{$pais->nompais}}</option>
                                            @endforeach
                                        </select>
                                  </div>
                                  <div class="mb-2">
                                        <label for="iddep" class="form-label">Departamento <span class="text-danger">*</span></label>
                                        <select class="form-select" name="iddep" id="iddep"
                                        onchange="showCiudades(this.value)" required></select>
                                   </div>
                                   <div class="mb-2">
                                        <label for="idCiudad" class="form-label">Ciudad <span class="text-danger">*</span></label>
                                        <select class="form-select" name="id_ciudad" id="id_ciudad" required></select>
                                   </div>
                                    <div class="mb-2">
                                        <label for="fecha-fin" class="form-label">Vinculo Familiar</label>
                                        <select class="form-select" name="vinculo">
                                            <option selected>Select Option</option>
                                            <option value="padre">Padre</option>
                                            <option value="madre">Madre</option>
                                            <option value="apoderado">Apoderado</option>
                                        </select>
                                  </div>
                                  {{-- <div class="mb-2">
                                        <label for="example" class="form-label">Persona</label>
                                        <select class="form-select example" name="example">
                                            <option value="">Selecciona una persona</option>
                                            @foreach ($personas as $persona)
                                                <option value="{{ $persona->id }}">{{ $persona->nombre }} {{ $persona->apellidos }}</option>
                                            @endforeach
                                        </select>
                                   </div> --}}
                                </div>
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
            <div class="row d-flex justify-content-between align-items-center pr-3 mb-3">
                <div class="col-4">
                    <div class="mb-3">
                       <!--<form>
                            <input name="query" class="form-control" id="exampleInputEmail1" placeholder="Buscar">
                        </form>-->
                    </div>
                </div>
                <div class="col-4 d-flex justify-content-end align-items-end align-content-end">
                    <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#modalRegistrar">
                        <i class="fa fa-circle-plus mr-2" aria-hidden="true"></i>Agregar Apoderado</button>
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
                                <th class=".text-dark-emphasis">N° CELULAR</th>
                                <th class=".text-dark-emphasis">DIRECCIÓN</th>
                                <th class=".text-dark-emphasis">CIUDAD</th>
                                <th class="d-flex justify-content-end pr-5">ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($apoderados as $apoderado)
                            <tr>
                                <td>{{ $apoderado->personas->numiden }}</td>
                                <td>{{ $apoderado->personas->apellidos }}</td>
                                <td>{{ $apoderado->personas->nombre }}</td>                                    
                                <td>{{ $apoderado->personas->telefono }}</td>
                                <td>{{ $apoderado->personas->direccion }}</td>
                                <td>{{ $apoderado->ciudades->nomciu }}</td>
                                <td class="d-flex justify-content-end align-items-center">
                                    <div class="">
                                        <button class="btn btn-primary btn-sm " data-bs-toggle="modal"
                                                data-bs-target="#modalEditar{{ $apoderado->personas->id }}" title="Editar">
                                            <i class="fas fa-fw fa-pen" aria-hidden="true"></i>
                                        </button>
                                        <a href="{{ route('apoderados.show', $apoderado->id) }}" class="btn btn-success btn-sm" title="Ver">
                                            <i class="fas fa-fw fa-eye" aria-hidden="true"></i>
                                        </a>
                                        <form id="deleteForm" action="{{ route('apoderados.destroy', $apoderado) }}" method="POST" style="display: inline;">
                                            @csrf
                                            @method('DELETE')
                                            <button class="btn btn-danger btn-sm  deleteButton" title="Eliminar" id="deleteItem">
                                                <i class="fas fa-fw fa-trash" aria-hidden="true"></i>
                                            </button>
                                        </form>
                                    </div>
                                   
                                </td>
                                <!-- Modal -->
                                <div class="modal fade" id="modalEditar{{ $apoderado->personas->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-xl">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar Apoderado</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <form action="{{ route('apoderados.update', $apoderado->personas) }}" method="POST">
    
                                                    @csrf
                                                    @method('put')
                                                    <div class="row">
                                                        <div class="col-4">
                                                            <div class="mb-2">
                                                                <label for="descripcion" class="form-label">Nombre <span class="text-danger">*</span></label>
                                                                <input type="text" class="form-control" name="nombre" autocomplete="off" required
                                                                       value="{{ $apoderado->personas->nombre }}">
                                                            </div>
                                                            <div class="mb-2">
                                                                <label for="fecha-ini" class="form-label">Apellidos <span class="text-danger">*</span></label>
                                                                <input type="text" class="form-control" name="apellidos" required
                                                                       value="{{ $apoderado->personas->apellidos }}">
                                                            </div>
                                                            <div class="mb-2">
                                                                <label for="fecha-fin" class="form-label">Sexo <span class="text-danger">*</span></label>
                                                                <select class="form-select" name="sexo">
                                                                    <option selected>Select Option</option>
                                                                    <option value="masculino" @if ($apoderado->personas->sexo === 'masculino') selected @endif>Masculino</option>
                                                                    <option value="femenino" @if ($apoderado->personas->sexo === 'femenino') selected @endif>Femenino</option>
                                                                </select>
                                                            </div>
                                                            <div class="mb-2">
                                                                <label for="fecha-fin" class="form-label">Direccion <span class="text-danger">*</span></label>
                                                                <input type="text" class="form-control" name="direccion"
                                                                       value="{{ $apoderado->personas->direccion }}" autocomplete="off" required>
                                                            </div>
                                                        </div>
                                                        <div class="col-4">
                                                            <div class="mb-2">
                                                                <label for="fecha-fin" class="form-label">Telefono <span class="text-danger">*</span></label>
                                                                <input type="text" class="form-control" name="telefono"
                                                                       value="{{ $apoderado->personas->telefono }}" autocomplete="off" required>
                                                            </div>
                                                            <div class="mb-2">
                                                                <label for="fecha-fin" class="form-label">Doc. Identificacion <span class="text-danger">*</span></label>
                                                                <select class="form-select" name="id_tipo_identificacion" id="id_tipo_identificacion" required>
                                                                    <option selected>Select Option</option>
                                                                    @foreach ($tipo_identificacions as $tipo_identificacion)
                                                                        <option value="{{ $tipo_identificacion->id }}"
                                                                                @if ($tipo_identificacion->id == $apoderado->personas->id_tipo_identificacion) selected @endif>{{ $tipo_identificacion->nombre }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </div>
                                                            <div class="mb-2">
                                                                <label for="fecha-ini" class="form-label">Num. Identificacion <span class="text-danger">*</span></label>
                                                                <input type="text" class="form-control" name="numiden" required
                                                                       value="{{ $apoderado->personas->numiden }}" autocomplete="off">
                                                            </div>
                                                            <div class="mb-2">
                                                                <label for="fecha-ini" class="form-label">Email <span class="text-danger">*</span></label>
                                                                <input type="email" class="form-control" name="email" required
                                                                       value="{{ $apoderado->personas->email }}" autocomplete="off">
                                                            </div>
                                                        </div>
                                                        <div class="col-4">
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
                                                            <label for="fecha-fin" class="form-label">Vinculo <span class="text-danger">*</span></label>
                                                                <select class="form-select" name="vinculo">
                                                                    <option selected>Select Option</option>
                                                                    <option value="padre" @if ($apoderado->vinculo === 'padre') selected @endif>Padre</option>
                                                                    <option value="madre" @if ($apoderado->vinculo === 'madre') selected @endif>Madre</option>
                                                                    <option value="apoderado" @if ($apoderado->vinculo === 'apoderado') selected @endif>Apoderado</option>
                                                                </select>
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
        $(document).ready(function () {
            $('#lista').DataTable({responsive:true,autowidth:false,
                "language":{"search": "Buscar Apoderado",
                "lengthMenu":"Mostrar _MENU_ registros por página",
                "info":"Mostrando página _PAGE_ de _PAGES_",
                "paginate":{
                            "previous":"Anterior",
                            "next":"Siguiente",
                            "first":"Primero",
                            "last": "Último"
                }}
            });
            $('.example').select2({
                dropdownParent: $('#modalRegistrar'),
            placeholder: 'Selecciona una persona',
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

@stop