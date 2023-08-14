@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')

@section('content_header')
    <h1 class="m-0 text-dark">Modulos Academicos</h1>
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
                        <form action="{{route('modulos.store')}}" method="POST">
                            @csrf
                            <div class="mb-3">
                                <label for="descripcion" class="form-label">Nombre</label>
                                <input type="text" class="form-control" name="nombre" autocomplete="off">
                            </div>
                            <div class="mb-3">
                                <label for="fecha-fin" class="form-label">Tipo Modulo</label>
                                <select class="form-select" name="id_tipo_modulo" id="id_tipo_modulo">
                                    <option selected>Select Option</option>
                                    @foreach ($tipo_modulos as $tipo_modulo)
                                    <option value="{{$tipo_modulo->id}}">{{$tipo_modulo->nombre}}</option>
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
                    <form>
                        <div class="mb-3">
                          <input type="email" class="form-control" id="exampleInputEmail1"placeholder="Buscar">
                        </div>
                      </form>
                </div>
                <div class="col-4 d-flex justify-content-end mr-3">
                    <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#modalRegistrar">
                        <i class="fa fa-circle-plus" aria-hidden="true"></i>Crear Modulo</button>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th class=".text-dark-emphasis">NOMBRE</th>
                            <th class=".text-dark-emphasis">TIPO MODULO</th>
                            <th class=".text-dark-emphasis">PROGRAMA ACADEMICO</th>
                            <th class="d-flex justify-content-end pr-5">ACCIONES</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($modulo_academicos as $modulo_academico)
                        <tr>
                            <td>{{$modulo_academico->nombre}}</td>
                            <td>{{$modulo_academico->tipo_modulos->nombre}}</td>
                            <td>{{$modulo_academico->programa_academicos->nombre}}</td>
                            <td class="d-flex justify-content-end pr-5">
                                <button class="btn btn-primary btn-sm mr-3" data-bs-toggle="modal" 
                                data-bs-target="#modalEditar{{$modulo_academico->id}}" title="Editar">
                                <i class="fas fa-fw fa-pen" aria-hidden="true"></i>
                                </button>
                                <form id="deleteForm" action="{{ route('modulos.destroy', $modulo_academico) }}" method="POST" style="display: inline;">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-danger btn-sm mr-3 deleteButton" title="Eliminar" id="deleteItem">
                                        <i class="fas fa-fw fa-trash" aria-hidden="true"></i>
                                    </button>
                                </form>
                            </td>
                            <!-- Modal -->
                            <div class="modal fade" id="modalEditar{{$modulo_academico->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar datos</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="{{route('modulos.update',$modulo_academico)}}" method="POST">
                                            @csrf
                                            @method('put')
                                            <div class="mb-3">
                                                <label for="descripcion" class="form-label">Nombre</label>
                                                <input type="text" class="form-control" name="nombre" 
                                                value="{{$modulo_academico->nombre}}" autocomplete="off">
                                            </div>
                                            <div class="mb-3">
                                                <label for="fecha-fin" class="form-label">Tipo Modulo</label>
                                                <select class="form-select" name="id_tipo_modulo" id="id_tipo_modulo">
                                                    <option selected>Select Option</option>
                                                    @foreach ($tipo_modulos as $tipo_modulo)
                                                    <option value="{{$tipo_modulo->id}}" @if($tipo_modulo->id == $modulo_academico->id_tipo_modulos) selected @endif>{{$tipo_modulo->nombre}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="mb-3">
                                                <label for="fecha-fin" class="form-label">Programa Academico</label>
                                                <select class="form-select" name="id_programa_academico" id="id_programa_academico">
                                                    <option selected>Select Option</option>
                                                    @foreach ($programa_academicos as $programa_academico)
                                                    <option value="{{$programa_academico->id}}" @if($programa_academico->id == $modulo_academico->id_programa_academico) selected @endif>{{$programa_academico->nombre}}</option>
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
@stop