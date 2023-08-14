@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')


@section('content_header')
    <h1 class="m-0 text-dark">Unidades Didacticas</h1>
@stop

@section('content')

    <div class="row">
        <div class="col-12">
            
            
            <div class="modal fade" id="modalRegistrar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Unidad Didactica</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="{{route('unidades-didacticas.store')}}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-6">
                                    <div class="mb-3">
                                        <label for="descripcion" class="form-label">Nombre</label>
                                        <input type="text" class="form-control" name="nombre" autocomplete="off">
                                    </div>
                                    <div class="mb-3">
                                        <label for="descripcion" class="form-label">Creditos</label>
                                        <input type="number" class="form-control" name="cantidad_creditos" autocomplete="off">
                                    </div>
                                    <div class="mb-3">
                                        <label for="descripcion" class="form-label">Horas semanales</label>
                                        <input type="number" class="form-control" name="horas_xsemana" autocomplete="off">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="mb-3">
                                        <label for="fecha-fin" class="form-label">Modulo Academico</label>
                                        <select class="form-select" name="id_modulo_academico">
                                            <option selected>Select Option</option>
                                            @foreach ($modulo_academicos as $modulo_academico)
                                            <option value="{{ $modulo_academico->id}}">{{ $modulo_academico->nombre}}
                                            {{'-'}}{{$modulo_academico->programa_academicos->nombre}}</option>
                                            @endforeach
                                          </select>
                                    </div>
                                    <div class="mb-3">
                                        <label for="fecha-fin" class="form-label">Total semanas</label>
                                        <select class="form-select" name="id_configuracion">
                                            <option selected>Select Option</option>
                                            @foreach ($configuracions as $configuracion)
                                            <option value="{{$configuracion->id}}">
                                                {{$configuracion->tolalsemana}}</option>
                                            @endforeach    
                                        </select>
                                    </div>
                                    <div class="mb-3">
                                        <label for="fecha-fin" class="form-label">Ciclo</label>
                                        <select class="form-select" name="id_ciclo">
                                            <option selected>Select Option</option>
                                            @foreach ($ciclos as $ciclo)
                                            <option value="{{$ciclo->id}}">{{$ciclo->nombre}}</option>
                                            @endforeach
                                        </select>
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
                        <i class="fa fa-circle-plus" aria-hidden="true"></i>Agregar</button>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th class=".text-dark-emphasis">NOMBRE</th>
                            <th class=".text-dark-emphasis">MODULO</th>
                            <th class=".text-dark-emphasis">PROGRAMA</th>
                            <th class=".text-dark-emphasis">CICLO</th>
                            <th class="d-flex justify-content-end pr-5">ACCIONES</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($unidades_didacticas as $unidad_didactica)
                        <tr>
                            <td>{{$unidad_didactica->nombre}}</td>
                            <td>{{$unidad_didactica->modulo_academicos->nombre}}</td>
                            <td>{{$unidad_didactica->modulo_academicos->programa_academicos->nombre}}</td>
                            <td>{{$unidad_didactica->ciclos->nombre}}</td>
                            <td class="d-flex justify-content-end pr-5">
                                <button class="btn btn-primary btn-sm mr-3" data-bs-toggle="modal" 
                                data-bs-target="#modalEditar{{$unidad_didactica->id}}" title="Editar">
                                <i class="fas fa-fw fa-pen" aria-hidden="true"></i>
                                </button>
                                <form id="deleteForm" action="{{ route('unidades-didacticas.destroy', $unidad_didactica) }}" method="POST" style="display: inline;">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-danger btn-sm mr-3 deleteButton" title="Eliminar" id="deleteItem">
                                        <i class="fas fa-fw fa-trash" aria-hidden="true"></i>
                                    </button>
                                </form>
                                <a href="{{route('unidades-didacticas.show',$unidad_didactica->id)}}">
                                    <button class="btn btn-warning btn-sm" title="Ver">
                                    <i class="fas fa-fw fa-eye" aria-hidden="true"></i>
                                </button></a>
                            </td>
                            <!-- Modal -->
                            <div class="modal fade" id="modalEditar{{$unidad_didactica->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar Unidad Didactica</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="{{route('unidades-didacticas.update',$unidad_didactica)}}" method="POST">
                                            @csrf
                                            @method('put')
                                            <div class="row">
                                                <div class="col-6">
                                                    <div class="mb-3">
                                                        <label for="descripcion" class="form-label">Nombre</label>
                                                        <input type="text" class="form-control" name="nombre"
                                                        value="{{$unidad_didactica->nombre}}" autocomplete="off">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="descripcion" class="form-label">Creditos</label>
                                                        <input type="number" class="form-control" name="cantidad_creditos"
                                                        value="{{$unidad_didactica->cantidad_creditos}}" autocomplete="off">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="descripcion" class="form-label">Horas semanales</label>
                                                        <input type="number" class="form-control" name="horas_xsemana"
                                                        value="{{$unidad_didactica->horas_xsemana}}" autocomplete="off">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="mb-3">
                                                        <label for="fecha-fin" class="form-label">Modulo Academico</label>
                                                        <select class="form-select" name="id_modulo_academico">
                                                            <option selected>Select Option</option>
                                                            @foreach ($modulo_academicos as $modulo_academico)
                                                            <option value="{{$modulo_academico->id}}" 
                                                                @if($modulo_academico->id == $unidad_didactica->id_modulo_academico) selected @endif>
                                                                {{ $modulo_academico->nombre}}
                                                                {{'-'}}{{$modulo_academico->programa_academicos->nombre}}</option>
                                                            @endforeach
                                                          </select>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="fecha-fin" class="form-label">Total Semanas</label>
                                                        <select class="form-select" name="id_configuracion">
                                                            <option selected>Select Option</option>
                                                            @foreach ($configuracions as $configuracion)
                                                            <option value="{{$configuracion->id}}" 
                                                                @if($configuracion->id == $unidad_didactica->id_configuracion) selected @endif>
                                                                {{$configuracion->tolalsemana}}</option>
                                                            @endforeach
                                                          </select>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="fecha-fin" class="form-label">Ciclo</label>
                                                        <select class="form-select" name="id_ciclo">
                                                            <option selected>Select Option</option>
                                                            @foreach ($ciclos as $ciclo)
                                                            <option value="{{$ciclo->id}}" 
                                                                @if($ciclo->id == $unidad_didactica->id_ciclo) selected @endif>
                                                                {{$ciclo->nombre}}</option>
                                                            @endforeach
                                                          </select>
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