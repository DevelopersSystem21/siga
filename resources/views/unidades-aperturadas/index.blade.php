@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')

@section('content_header')
    <h1 class="m-0 text-dark">Unidades Aperturados</h1>
@stop

@section('content')
    <div class="row">
        <div class="col-12">
            
            
            <div class="modal fade" id="modalRegistrar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Datos</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="{{route('unidades-aperturadas.store')}}" method="POST">
                            @csrf 
                            <div class="row">
                                <div class="col-4">
                                    <div class="mb-2">
                                        <label for="descripcion" class="form-label">Codigo</label>
                                        <input type="text" class="form-control" name="codigo"
                                        autocomplete="off">
                                    </div>
                                    <div class="mb-2">
                                        <label for="fecha-fin" class="form-label">Periodo Academico</label>
                                        <select class="form-select" name="id_unidad_didacticas">
                                            <option selected>Select Option</option>
                                            <option value="1">Periodo 1</option>
                                            <option value="1">Periodo 2</option>
                                            <option value="1">Periodo 3</option>
                                          </select>
                                    </div>
                                    <div class="mb-2">
                                        <label for="fecha-fin" class="form-label">Programa Academico</label>
                                        <select class="form-select" name="id_unidad_didacticas">
                                            <option selected>Select Option</option>
                                            <option value="1">Programa 1</option>
                                            <option value="1">Programa 2</option>
                                            <option value="1">Programa 3</option>
                                          </select>
                                    </div>
                                    <div class="mb-2">
                                        <label for="fecha-fin" class="form-label">Unidad Didactica</label>
                                        <select class="form-select" name="id_unidad_didacticas">
                                            <option selected>Select Option</option>
                                            @foreach ($unidad_didacticas as $unidad_didactica)
                                            <option value="{{$unidad_didactica->id}}">{{$unidad_didactica->nombre}}</option>>
                                            @endforeach
                                          </select>
                                    </div>

                                </div>
                                <div class="col-4">
                                    <div class="mb-2">
                                        <label for="fecha-fin" class="form-label">Ciclo</label>
                                        <select class="form-select" name="id_unidad_didacticas">
                                            <option selected>Select Option</option>
                                            <option value="1">Ciclo 1</option>
                                            <option value="1">Ciclo 2</option>
                                            <option value="1">Ciclo 3</option>
                                          </select>
                                    </div>
                                    <div class="mb-2">
                                        <label for="fecha-fin" class="form-label">Turno</label>
                                        <select class="form-select" name="id_unidad_didacticas">
                                            <option selected>Select Option</option>
                                            <option value="1">Mañana</option>
                                            <option value="1">Tarde</option>
                                            <option value="1">Noche</option>
                                          </select>
                                    </div>
                                    <div class="mb-2">
                                        <label for="fecha-fin" class="form-label">Docente</label>
                                        <select class="form-select" name="id_unidad_didacticas">
                                            <option selected>Select Option</option>
                                            <option value="1">Juan</option>
                                            <option value="1">Carlos</option>
                                            <option value="1">Ana</option>
                                          </select>
                                    </div>
                                    <div class="mb-2">
                                        <label for="fecha-fin" class="form-label">Grupo</label>
                                        <select class="form-select" name="id_unidad_didacticas">
                                            <option selected>Select Option</option>
                                            <option value="1">Grupo I</option>
                                            <option value="1">Grupo II</option>
                                            <option value="1">Grupo III</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-4">
                                    
                                    <div class="mb-2">
                                        <label for="fecha-fin" class="form-label">Aula</label>
                                        <select class="form-select" name="id_unidad_didacticas">
                                            <option selected>Select Option</option>
                                            <option value="1">Juan</option>
                                            <option value="1">Carlos</option>
                                            <option value="1">Ana</option>
                                          </select>
                                    </div>
                                    <div class="mb-2">
                                        <label for="descripcion" class="form-label">Fecha Inicio</label>
                                        <input type="date" class="form-control" name="codigo"
                                        autocomplete="off">
                                    </div>
                                    <div class="mb-2">
                                        <label for="descripcion" class="form-label">Fecha Fin</label>
                                        <input type="date" class="form-control" name="codigo"
                                        autocomplete="off">
                                    </div>
                                </div>
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
            <div class="table mb-2 table-striped table-hover table-sm" id="lista">
                <table class="table table-striped table-hover">
                    <thead class="bg-gradient-info">
                        <tr>
                            <th class=".text-dark-emphasis">NOMBRE</th>
                            <th class=".text-dark-emphasis">ESTADO</th>
                            <th class=".text-dark-emphasis">MODULO ACADEMICO</th>
                            <th class="d-flex justify-content-end pr-5">ACCIONES</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($unidad_aperturados as $unidad_aperturado)
                        <tr>
                            <td>{{$unidad_aperturado->unidad_didacticas->nombre}}</td>
                            <td>{{$unidad_aperturado->estado}}</td>
                            <td>{{$unidad_aperturado->modulo_aperturados->modulo_academicos->nombre}}</td>
                            <td class="d-flex justify-content-end pr-5">
                                <button class="btn btn-primary btn-sm mr-3" data-bs-toggle="modal" 
                                data-bs-target="#modalEditar{{$unidad_aperturado->id}}" title="Editar">
                                <i class="fas fa-fw fa-pen" aria-hidden="true"></i>
                                </button>
                                <form id="deleteForm" action="{{ route('unidades-aperturadas.destroy', $unidad_aperturado) }}" method="POST" style="display: inline;">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-danger btn-sm mr-3 deleteButton" title="Eliminar" id="deleteItem">
                                        <i class="fas fa-fw fa-trash" aria-hidden="true"></i>
                                    </button>
                                </form>
                                <a href="{{route('horario.show',$unidad_aperturado->id)}}">
                                <button class="btn btn-warning btn-sm mr-3" title="Horario">
                                    <i class="fa-solid fa-calendar"></i>
                                </button>
                            </a>
                            </td>
                            <!-- Modal -->
                            <div class="modal fade" id="modalEditar{{$unidad_aperturado->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar datos</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="{{route('unidades-aperturadas.update',$unidad_aperturado)}}" method="POST">
                                            @csrf
                                            @method('put')
                                            <div class="mb-2">
                                                <label for="fecha-fin" class="form-label">Unidad Didactica</label>
                                                <select class="form-select" name="id_unidad_didacticas" id="id_unidad_didacticas">
                                                    <option selected>Select Option</option>
                                                    @foreach ($unidad_didacticas as $unidad_didactica)
                                                    <option value="{{$unidad_didactica->id}}" 
                                                        @if($unidad_didactica->id == $unidad_aperturado->id_unidad_didacticas) selected @endif
                                                        >{{$unidad_didactica->nombre}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="mb-2">
                                                <label for="fecha-ini" class="form-label">Estado</label>
                                                <div class="d-flex ml-2">
                                                    <div class="form-check mr-3">
                                                        <input class="form-check-input" type="radio" name="estado" id="activo" 
                                                        value="activo" @if($unidad_aperturado->estado === 'activo') checked @endif>
                                                        <label class="form-check-label" for="activo">
                                                          Activo
                                                        </label>
                                                      </div>
                                                      <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="estado" id="inactivo" 
                                                        value="inactivo" @if($unidad_aperturado->estado === 'inactivo') checked @endif>
                                                        <label class="form-check-label" for="inactivo">
                                                          Inactivo
                                                        </label>
                                                      </div>
                                                </div>
                                            </div>
                                            <div class="mb-2">
                                                <label for="fecha-fin" class="form-label">Modulos Aperturados</label>
                                                <select class="form-select" name="id_modulo_aperturados" id="id_modulo_aperturados">
                                                    <option selected>Select Option</option>
                                                    @foreach ($modulo_aperturados as $modulo_aperturado)
                                                    <option value="{{$modulo_aperturado->id}}" 
                                                        @if($modulo_aperturado->id == $unidad_aperturado->id_modulo_aperturados) selected @endif
                                                        >{{$modulo_aperturado->modulo_academicos->nombre}}</option>
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