@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')

@section('content_header')
    <h1 class="m-0 text-dark">Estudiantes - Unidades Aperturadas</h1>
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
                        <form action="{{route('detalle-registro-auxiliar.store')}}" method="POST">
                            @csrf 
                            <div class="mb-3">
                                <label for="fecha-fin" class="form-label">Estudiante</label>
                                <select class="form-select" name="id_estudiantes">
                                    <option selected>Select Option</option>
                                    @foreach ($estudiantes as $estudiante)
                                    <option value="{{$estudiante->id}}">{{$estudiante->personas->nombre}}</option>
                                    @endforeach
                                  </select>
                            </div>
                            <div class="mb-3">
                                <label for="fecha-fin" class="form-label">Docente - Unidad</label>
                                <select class="form-select" name="id_doctxunidapertus">
                                    <option selected>Select Option</option>
                                    @foreach ($doctxunidapertus as $doctxunidapertu)
                                    <option value="{{$doctxunidapertu->id}}">
                                        {{$doctxunidapertu->docentes->personas->nombre}}
                                        {{$doctxunidapertu->unidad_aperturados->unidad_didacticas->nombre}}</option>
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
                        <i class="fa fa-circle-plus" aria-hidden="true"></i>Agregar Registro Auxiliar</button>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th class=".text-dark-emphasis">ESTUDIANTE</th>
                            <th class=".text-dark-emphasis">DOCENTE</th>
                            <th class=".text-dark-emphasis">UNIDAD DIDACTICA</th>
                            <th class="d-flex justify-content-end pr-5">ACCIONES</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($detregistroauxiliars as $detregistroauxiliar)
                        <tr>
                            <td>{{$detregistroauxiliar->estudiantes->personas->nombre}}</td>
                            <td>{{$detregistroauxiliar->doctxunidapertus->docentes->personas->nombre}}</td>
                            <td>{{$detregistroauxiliar->doctxunidapertus->unidad_aperturados->unidad_didacticas->nombre}}</td>
                            <td class="d-flex justify-content-end pr-5">
                                <button class="btn btn-primary btn-sm mr-3" data-bs-toggle="modal" 
                                data-bs-target="#modalEditar{{$detregistroauxiliar->id}}" title="Editar">
                                <i class="fas fa-fw fa-pen" aria-hidden="true"></i>
                                </button>
                                <form id="deleteForm" action="{{ route('detalle-registro-auxiliar.destroy', $detregistroauxiliar) }}" method="POST" style="display: inline;">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-danger btn-sm mr-3 deleteButton" title="Eliminar" id="deleteItem">
                                        <i class="fas fa-fw fa-trash" aria-hidden="true"></i>
                                    </button>
                                </form>
                            </td>
                            <!-- Modal -->
                            <div class="modal fade" id="modalEditar{{$detregistroauxiliar->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar datos</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="{{route('detalle-registro-auxiliar.update',$detregistroauxiliar)}}" method="POST">
                                            @csrf
                                            @method('put')
                                            <div class="mb-2">
                                                <label for="fecha-fin" class="form-label">Estudiante</label>
                                                <select class="form-select" name="id_estudiantes" id="id_estudiantes">
                                                    <option selected>Select Option</option>
                                                    @foreach ($estudiantes as $estudiante)
                                                    <option value="{{$estudiante->id}}" 
                                                        @if($estudiante->id == $detregistroauxiliar->id_estudiantes) selected @endif
                                                        >{{$estudiante->personas->nombre}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="mb-2">
                                                <label for="fecha-fin" class="form-label">Docente - Unidad Didactica</label>
                                                <select class="form-select" name="id_doctxunidapertus" id="id_doctxunidapertus">
                                                    <option selected>Select Option</option>
                                                    @foreach ($doctxunidapertus as $doctxunidapertu)
                                                    <option value="{{$doctxunidapertu->id}}" 
                                                        @if($doctxunidapertu->id == $detregistroauxiliar->id_doctxunidapertus) selected @endif
                                                        >{{$doctxunidapertu->docentes->personas->nombre}}
                                                        {{$doctxunidapertu->unidad_aperturados->unidad_didacticas->nombre}}</option>
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