@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')

@section('content_header')
    <h1 class="m-0 text-dark">Producto - Programas Academicos</h1>
@stop

@section('content')
    <div class="row">
        <div class="col-12">
            
            
            <div class="modal fade" id="modalRegistrar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Datos</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="{{route('producto-programa.store')}}" method="POST">
                            @csrf
                            <div class="mb-3">
                                <label for="fecha-fin" class="form-label">Producto</label>
                                <select class="form-select" name="id_producto" id="id_producto">
                                    <option selected>Select Option</option>
                                    @foreach ($productos as $producto)
                                    <option value="{{$producto->id}}">{{$producto->nombre}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div>
                            </div>
                            <div class="mb-3">
                                <label for="fecha-fin" class="form-label">Programa Academico</label>
                                <select class="form-select" name="id_programa_academico" id="id_programa_academico">
                                    <option selected>Select Option</option>
                                    @foreach ($programa_academicos as $programa_academico)
                                    <option value="{{$programa_academico->id}}">{{$programa_academico->nombre}}</option>>
                                    @endforeach
                                  </select>
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
            <div class="row d-flex justify-content-between align-items-center pr-3">
                <div class="col-4">
                    <!--<form>
                        <div class="mb-3">
                          <input type="email" class="form-control" id="exampleInputEmail1"placeholder="Buscar">
                        </div>
                      </form>-->
                </div>
                <div class="col-4 d-flex justify-content-end mr-3">
                    <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#modalRegistrar">
                        <i class="fa fa-circle-plus" aria-hidden="true"></i>Crear Producto Programa</button>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table mb-2 table-striped table-hover table-sm" id="lista">
                    <thead class="bg-gradient-info">
                        <tr>
                            <th class=".text-dark-emphasis">PRODUCTO</th>
                            <th class=".text-dark-emphasis">PROGRAMA ACADEMICO</th>
                            <th class="d-flex justify-content-end pr-5">ACCIONES</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($producto_programas as $producto_programa)
                        <tr>
                            <td>{{$producto_programa->productos->nombre}}</td>
                            <td>{{$producto_programa->programa_academicos->nombre}}</td>
                            <td class="d-flex justify-content-end pr-5">
                                <button class="btn btn-primary btn-sm mr-3" data-bs-toggle="modal" 
                                data-bs-target="#modalEditar{{$producto_programa->id}}" title="Editar">
                                <i class="fas fa-fw fa-pen" aria-hidden="true"></i>
                                </button>
                                <form id="deleteForm" action="{{ route('producto-programa.destroy', $producto_programa) }}" method="POST" style="display: inline;">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-danger btn-sm mr-3 deleteButton" title="Eliminar" id="deleteItem">
                                        <i class="fas fa-fw fa-trash" aria-hidden="true"></i>
                                    </button>
                                </form>
                            </td>
                            <!-- Modal -->
                            <div class="modal fade" id="modalEditar{{$producto_programa->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar datos</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="{{route('producto-programa.update',$producto_programa)}}" method="POST">
                                            @csrf
                                            @method('put')
                                            <div class="mb-3">
                                                <label for="fecha-fin" class="form-label">Producto</label>
                                                <select class="form-select" name="id_producto" id="id_producto">
                                                    <option selected>Select Option</option>
                                                    @foreach ($productos as $producto)
                                                    <option value="{{$producto->id}}" @if($producto->id == $producto_programa->id_producto) selected @endif>{{$producto->nombre}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="mb-3">
                                                <label for="fecha-fin" class="form-label">Programa Academico</label>
                                                <select class="form-select" name="id_programa_academico" id="id_programa_academico">
                                                    <option selected>Select Option</option>
                                                    @foreach ($programa_academicos as $programa_academico)
                                                    <option value="{{$programa_academico->id}}" @if($programa_academico->id == $producto_programa->id_programa_academico) selected @endif>{{$programa_academico->nombre}}</option>
                                                    @endforeach
                                                </select>
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
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
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
    
    @if(session('error'))
    <script>
        Swal.fire({
            title: 'Error',
            text: '{{ session("error") }}',
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