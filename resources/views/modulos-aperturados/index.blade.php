@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')

@section('content_header')
    <h1 class="m-0 text-dark">Modulos Aperturados</h1>
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
                        <form action="{{route('modulos-aperturados.store')}}" method="POST">
                            @csrf 
                            <div class="mb-3">
                                <label for="fecha-fin" class="form-label">Modulo Academico</label>
                                <select class="form-select" name="id_modulo_academicos">
                                    <option selected>Select Option</option>
                                    @foreach ($modulo_academicos as $modulo_academico)
                                    <option value="{{$modulo_academico->id}}">{{$modulo_academico->nombre}}</option>>
                                    @endforeach
                                  </select>
                            </div>
                            <div class="mb-2">
                                <label for="estado" class="form-label">Estado</label>
                                <div class="d-flex ml-2">
                                    <div class="form-check mr-3">
                                        <input class="form-check-input" type="radio" name="estado" id="activo" value="activo" checked>
                                        <label class="form-check-label" for="activo">
                                          Activo
                                        </label>
                                      </div>
                                      <div class="form-check">
                                        <input class="form-check-input" type="radio" name="estado" id="inactivo" value="inactivo">
                                        <label class="form-check-label" for="inactivo">
                                          Inactivo
                                        </label>
                                      </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="fecha-fin" class="form-label">Periodo Academico</label>
                                <select class="form-select" name="id_periodo_academicos">
                                    <option selected>Select Option</option>
                                    @foreach ($periodo_academicos as $periodo_academico)
                                    <option value="{{$periodo_academico->id}}">{{$periodo_academico->nombre}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div>
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
                        <i class="fa fa-circle-plus" aria-hidden="true"></i>Agregar Modulo Aperturado</button>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th class=".text-dark-emphasis">NOMBRE</th>
                            <th class=".text-dark-emphasis">ESTADO</th>
                            <th class=".text-dark-emphasis">PERIODO ACADEMICO</th>
                            <th class="d-flex justify-content-end pr-5">ACCIONES</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($modulos_aperturados as $modulos_aperturado)
                        <tr>
                            <td>{{$modulos_aperturado->modulo_academicos->nombre}}</td>
                            <td>{{$modulos_aperturado->estado}}</td>
                            <td>{{$modulos_aperturado->periodo_academicos->nombre}}</td>
                            <td class="d-flex justify-content-end pr-5">
                                <button class="btn btn-primary btn-sm mr-3" data-bs-toggle="modal" 
                                data-bs-target="#modalEditar{{$modulos_aperturado->id}}" title="Editar">
                                <i class="fas fa-fw fa-pen" aria-hidden="true"></i>
                                </button>
                                <form id="deleteForm" action="{{ route('modulos-aperturados.destroy', $modulos_aperturado) }}" method="POST" style="display: inline;">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-danger btn-sm mr-3 deleteButton" title="Eliminar" id="deleteItem">
                                        <i class="fas fa-fw fa-trash" aria-hidden="true"></i>
                                    </button>
                                </form>
                            </td>
                            <!-- Modal -->
                            <div class="modal fade" id="modalEditar{{$modulos_aperturado->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar datos</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="{{route('modulos-aperturados.update',$modulos_aperturado)}}" method="POST">
                                            @csrf
                                            @method('put')
                                            <div class="mb-2">
                                                <label for="fecha-fin" class="form-label">Modulo Academico</label>
                                                <select class="form-select" name="id_modulo_academicos" id="id_modulo_academicos">
                                                    <option selected>Select Option</option>
                                                    @foreach ($modulo_academicos as $modulo_academico)
                                                    <option value="{{$modulo_academico->id}}" 
                                                        @if($modulo_academico->id == $modulos_aperturado->id_modulo_academicos) selected @endif
                                                        >{{$modulo_academico->nombre}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="mb-2">
                                                <label for="fecha-ini" class="form-label">Estado</label>
                                                <div class="d-flex ml-2">
                                                    <div class="form-check mr-3">
                                                        <input class="form-check-input" type="radio" name="estado" id="activo" 
                                                        value="activo" @if($modulos_aperturado->estado === 'activo') checked @endif>
                                                        <label class="form-check-label" for="activo">
                                                          Activo
                                                        </label>
                                                      </div>
                                                      <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="estado" id="inactivo" 
                                                        value="inactivo" @if($modulos_aperturado->estado === 'inactivo') checked @endif>
                                                        <label class="form-check-label" for="inactivo">
                                                          Inactivo
                                                        </label>
                                                      </div>
                                                </div>
                                            </div>
                                            <div class="mb-2">
                                                <label for="fecha-fin" class="form-label">Periodo Academico</label>
                                                <select class="form-select" name="id_periodo_academicos" id="id_periodo_academicos">
                                                    <option selected>Select Option</option>
                                                    @foreach ($periodo_academicos as $periodo_academico)
                                                    <option value="{{$periodo_academico->id}}" 
                                                        @if($periodo_academico->id == $modulos_aperturado->id_periodo_academicos) selected @endif
                                                        >{{$periodo_academico->nombre}}</option>
                                                    @endforeach
                                                </select>
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