@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')


@section('content_header')
    <h1 class="m-0 text-dark">Datos Personales</h1>
@stop

@section('content')
    <div class="row">
        <div class="col-12">

            <div class="modal fade" id="modalRegistrar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Datos</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="{{ route('docentes.store') }}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-6">
                                        <div class="mb-2">
                                            <label for="descripcion" class="form-label">Nombre</label>
                                            <input type="text" class="form-control" name="nombre" autocomplete="off" required>
                                        </div>
                                        <div class="mb-2">
                                            <label for="fecha-ini" class="form-label">Apellidos</label>
                                            <input type="text" class="form-control" name="apellidos" autocomplete="off" required>
                                        </div>
                                        <div class="mb-2">
                                            <label for="fecha-fin" class="form-label">Sexo</label>
                                            <select class="form-select" name="sexo" required>
                                                <option selected>Select Option</option>
                                                <option value="masculino">Masculino</option>
                                                <option value="femenino">Femenino</option>
                                            </select>
                                        </div>
                                        <div class="mb-2">
                                            <label for="fecha-fin" class="form-label">Direccion</label>
                                            <input type="text" class="form-control" name="direccion" autocomplete="off" required>
                                        </div>
                                        <div class="mb-2">
                                            <label for="fecha-fin" class="form-label">Telefono</label>
                                            <input type="text" class="form-control" name="telefono" autocomplete="off" required>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="mb-2">
                                            <label for="fecha-fin" class="form-label">Doc. Identificacion</label>
                                            <select class="form-select" name="id_tipo_identificacion" id="id_tipo_identificacion" required>
                                                <option selected>Select Option</option>
                                                @foreach ($tipo_identificacions as $tipo_identificacion)
                                                    <option value="{{ $tipo_identificacion->id }}">{{ $tipo_identificacion->nombre }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="mb-2">
                                            <label for="fecha-ini" class="form-label">Num. Identificacion</label>
                                            <input type="text" class="form-control" name="numiden" autocomplete="off" required>
                                        </div>
                                        <div class="mb-2">
                                            <label for="fecha-ini" class="form-label">Email</label>
                                            <input type="email" class="form-control" name="email" autocomplete="off" required>
                                        </div>
                                        <div class="mb-2">
                                            <label for="fecha-ini" class="form-label">Codigo</label>
                                            <input type="text" class="form-control" name="codigo" autocomplete="off" required>
                                        </div>
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
                    <!--<form>
                        <div class="mb-3">
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Buscar">
                        </div>
                    </form>-->
                </div>
                <div class="col-4 d-flex justify-content-end align-items-end align-content-end">
                    <button class="btn btn-primary btn-sm " data-bs-toggle="modal" data-bs-target="#modalRegistrar">
                        <i class="fa fa-circle-plus mr-2" aria-hidden="true"></i>Agregar Docente</button>
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
                             
                                <th class="d-flex justify-content-end pr-5">ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($docentes as $docente)
                                <tr>
                                    <td>{{ $docente->personas->numiden }}</td>
                                    <td>{{ $docente->personas->apellidos }}</td>
                                    <td>{{ $docente->personas->nombre}}</td>
                                    <td>{{ $docente->personas->telefono }}</td>
                                    <td>{{ $docente->personas->direccion }}</td>
                                    
                                    <td class="d-flex justify-content-end pr-5">
                                        <div>
                                            <button class="btn btn-primary btn-sm" data-bs-toggle="modal"
                                                data-bs-target="#modalEditar{{ $docente->personas->id }}" title="Editar">
                                            <i class="fas fa-fw fa-pen" aria-hidden="true"></i>
                                        </button>
                                        <form id="deleteForm" action="{{ route('docentes.destroy', $docente) }}" method="POST" style="display: inline;">
                                            @csrf
                                            @method('DELETE')
                                            <button class="btn btn-danger btn-sm deleteButton" title="Eliminar" id="deleteItem">
                                                <i class="fas fa-fw fa-trash" aria-hidden="true"></i>
                                            </button>
                                        </form>
                                        </div>
                                        
                                    </td>
                                    <!-- Modal -->
                                    <div class="modal fade" id="modalEditar{{ $docente->personas->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-xl">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar datos</h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <form action="{{ route('docentes.update', $docente->personas) }}" method="POST">

                                                        @csrf
                                                        @method('put')
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <div class="mb-2">
                                                                    <label for="descripcion" class="form-label">Nombre</label>
                                                                    <input type="text" class="form-control" name="nombre" autocomplete="off" required
                                                                           value="{{ $docente->personas->nombre }}">
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="fecha-ini" class="form-label">Apellidos</label>
                                                                    <input type="text" class="form-control" name="apellidos" required
                                                                           value="{{ $docente->personas->apellidos }}">
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="fecha-fin" class="form-label">Sexo</label>
                                                                    <select class="form-select" name="sexo" required>
                                                                        <option selected>Select Option</option>
                                                                        <option value="masculino" @if ($docente->personas->sexo === 'masculino') selected @endif>Masculino</option>
                                                                        <option value="femenino" @if ($docente->personas->sexo === 'femenino') selected @endif>Femenino</option>
                                                                    </select>
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="fecha-fin" class="form-label">Direccion</label>
                                                                    <input type="text" class="form-control" name="direccion" required
                                                                           value="{{ $docente->personas->direccion }}" autocomplete="off">
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="fecha-fin" class="form-label">Telefono</label>
                                                                    <input type="text" class="form-control" name="telefono" required
                                                                           value="{{ $docente->personas->telefono }}" autocomplete="off">
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="mb-2">
                                                                    <label for="fecha-fin" class="form-label">Doc. Identificacion</label>
                                                                    <select class="form-select" name="id_tipo_identificacion" id="id_tipo_identificacion" required>
                                                                        <option selected>Select Option</option>
                                                                        @foreach ($tipo_identificacions as $tipo_identificacion)
                                                                            <option value="{{ $tipo_identificacion->id }}"
                                                                                    @if ($tipo_identificacion->id == $docente->personas->id_tipo_identificacion) selected @endif>{{ $tipo_identificacion->nombre }}</option>
                                                                        @endforeach
                                                                    </select>
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="fecha-ini" class="form-label">Num. Identificacion</label>
                                                                    <input type="text" class="form-control" name="numiden" required
                                                                           value="{{ $docente->personas->numiden }}" autocomplete="off">
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="fecha-ini" class="form-label">Email</label>
                                                                    <input type="email" class="form-control" name="email" required
                                                                           value="{{ $docente->personas->email }}" autocomplete="off">
                                                                </div>
                                                                <div class="mb-2">
                                                                    <label for="fecha-ini" class="form-label">Codigo</label>
                                                                    <input type="text" class="form-control" name="codigo" required
                                                                           value="{{ $docente->codigo }}">
                                                                </div>
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
    
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
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
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0-alpha3/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
    <link href="https://cdn.datatables.net/buttons/2.3.6/css/buttons.bootstrap5.min.css" rel="stylesheet"/>
    <link href="https://cdn.datatables.net/colreorder/1.6.2/css/colReorder.bootstrap5.min.css" rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.4.1/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.4.1/js/responsive.bootstrap5.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#lista').DataTable({responsive:true,autowidth:false,
                "language":{"search": "Buscar docente",
                "lengthMenu":"Mostrar _MENU_ registros por página",
                "info":"Mostrando página _PAGE_ de _PAGES_",
                "paginate":{
                            "previous":"Anterior",
                            "next":"Siguiente",
                            "first":"Primero",
                            "last": "Último"
                }}
            });
        });
    </script>
@stop
