@extends('layouts.bootstrap')

@section('title', 'Programa Académico')

@section('content_header')
    <h1 class="m-0 text-dark">Programa Académico</h1>
@endSection

@section('content')
    <div class="clas row">
         <!-- Modal de registro -->
        <div class="clas col-12">
            <div class="modal fade" id="modalRegistrar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content"> 
                        <div class="modal-header bg-primary">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Registrar datos</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="{{route('ProgramaAcademico.store')}}" method="POST">
                                @csrf
                                <div class="mb-3">
                                    <label for="nombre" class="form-label">Nombre Programa</label>
                                    <input type="text" class="form-control" id="nombre" name="nombre"
                                     autocomplete="off">
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
             <!-- Boton crear progrmación matricula -->
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
                        <i class="fa fa-circle-plus" aria-hidden="true"></i> Nueva programación</button>
                </div>
        <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th class=".text-dark-emphasis">Nombre Programa</th>
                             <th class="d-flex justify-content-end pr-5">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($programa_academicos as $programa_academico)
                        <tr>
                            <td>{{$programa_academico->nombre}}</td>
                            <td class="d-flex justify-content-end pr-5">
                                <button class="btn btn-primary btn-sm mr-3" data-bs-toggle="modal" 
                                data-bs-target="#modalEditar{{$programa_academico->id}}" title="Editar">
                                <i class="fas fa-fw fa-pen" aria-hidden="true"></i>
                                </button>
                                <form id="deleteForm" action="{{ route('ProgramaAcademico.destroy', $programa_academico) }}" method="POST" style="display: inline;">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-danger btn-sm mr-3 deleteButton" title="Eliminar" id="deleteItem">
                                        <i class="fas fa-fw fa-trash" aria-hidden="true"></i>
                                    </button>
                                </form>
                            </td>
                            
                            <!-- Modal -->
                            <div class="modal fade" id="modalEditar{{$programa_academico->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar datos</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="{{route('ProgramaAcademico.update',$programa_academico)}}" method="POST">
                                            @csrf
                                            @method('put')
                                            <div class="mb-3">
                                                <label for="nombre" class="form-label">Nombre Programa</label>
                                                <input type="text" class="form-control" id="nombre" name="nombre" 
                                                value="{{$programa_academico->nombre}}" autocomplete="off">
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
@endSection