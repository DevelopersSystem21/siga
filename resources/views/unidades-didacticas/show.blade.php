@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')
@section('content_header')
    {{-- <h1 class="m-0 text-dark">Estudiante: {{$estudiante->codigo}}</h1> --}}
@stop

@section('content') 
    <div class="row">
        <div class="col-12">
            <div class="modal fade" id="modalRegistrar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Capacidad Logro</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="{{route('capacidad-logro.store',$unidades_didacticas->id)}}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-12">
                                    <div class="mb-3">
                                        <input type="hidden" class="form-control" name="id_unidad_didacticas" autocomplete="off"
                                        value="{{$unidades_didacticas->id}}">
                                    </div>
                                    <div class="mb-3">
                                        <label for="descripcion" class="form-label">Nombre</label>
                                        <input type="text" class="form-control" name="nombre" autocomplete="off">
                                    </div>
                                    <div class="mb-3">
                                        <label for="descripcion" class="form-label">Peso</label>
                                        <input type="number" class="form-control" name="peso" autocomplete="off">
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
                <H2 class="mt-2">Unidad Didactica: <b>{{$unidades_didacticas->nombre}}</b></H2>
                <p>Programa Academico: {{$unidades_didacticas->modulo_academicos->programa_academicos->nombre}}</p>
                <p>Modulo Academico: {{$unidades_didacticas->modulo_academicos->nombre}}</p>
                <p>Ciclo: {{$unidades_didacticas->ciclos->nombre}}</p>
                <p>Creditos: {{$unidades_didacticas->cantidad_creditos}}</p>
                <p>Horas semanales: {{$unidades_didacticas->horas_xsemana}}</p>
        </div>
    </div>
    <div class="row d-flex justify-content-start align-items-center pr-3">
        <div class="col-12 d-flex justify-content-between mr-3">
            <div>
                
                <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#modalRegistrar">
                    <i class="fa fa-circle-plus" aria-hidden="true"></i>Agregar Logro</button>
                    <a href="{{route('horario.show',$unidades_didacticas->id)}}">
                        <button class="btn btn-sm shadow mr-1 border hover-btn-dark" title="Ir a Horario">
                            <i class="fa fa-circle-left mr-2 fa-lg text-primary" aria-hidden="true"></i>Horario
                          </button>
                    </a>
            </div>


             


            <a href="{{route('unidades-didacticas.index')}}">
            <button class="btn btn-sm shadow mr-1 border hover-btn-dark" title="Ir a Unidades Didacticas">
                <i class="fa fa-circle-left mr-2 fa-lg text-primary" aria-hidden="true"></i>Unidades Didacticas
              </button>
            </a>
    </div>
    <div class="table-responsive mt-3">
        <table class="table table-striped table-hover">
          <thead class="thead-light">
            <tr>
              <th class=".text-dark-emphasis">Id</th>
              <th class=".text-dark-emphasis">NombreLogro</th>
              <th class=".text-dark-emphasis">Peso</th>
              <th class="d-flex justify-content-end pr-5">Acciones</th>
            </tr>
          </thead>
          <tbody>
              @foreach ($capacidadlogros as $capacidadlogro)
            <tr>
              <td>{{$capacidadlogro->id}}</td>
              <td>{{$capacidadlogro->nombre}}</td>
              <td>{{$capacidadlogro->peso}}</td>
              <td class="d-flex justify-content-end pr-5">
                  <button class="btn btn-primary btn-sm mr-3" data-bs-toggle="modal" 
                      data-bs-target="#modalEditar{{$capacidadlogro->id}}" title="Editar">
                      <i class="fas fa-fw fa-pen" aria-hidden="true"></i>
                  </button>

                  <form id="deleteForm" action="{{ route('capacidad-logro.destroy',$capacidadlogro->id) }}" method="POST" style="display: inline;">
                    @csrf
                    @method('DELETE')
                    <button class="btn btn-danger btn-sm mr-3 deleteButton" title="Eliminar" id="deleteItem">
                        <i class="fas fa-fw fa-trash" aria-hidden="true"></i>
                    </button>
                </form>
                  <a href="{{route('capacidad-logro.show',$capacidadlogro->id)}}">  
                    <button class="btn btn-warning btn-sm" title="Ver Indicadores">
                    <i class="fas fa-fw fa-eye" aria-hidden="true"></i>
                </button></a>

                <div class="modal fade" id="modalEditar{{$capacidadlogro->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-md">
                    <div class="modal-content">
                        <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar Capacidad Logro</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="{{route('capacidad-logro.update',$capacidadlogro)}}" method="POST">
                                @csrf
                                @method('put')
                                <div class="row">
                                    <div class="col-12">
                                        <div class="mb-3">
                                            <input type="hidden" class="form-control" name="id_unidad_didacticas" autocomplete="off"
                                            value="{{$unidades_didacticas->id}}">
                                        </div>
                                        <div class="mb-3">
                                            <label for="descripcion" class="form-label">Nombre</label>
                                            <input type="text" class="form-control" name="nombre" autocomplete="off"
                                            value="{{$capacidadlogro->nombre}}">
                                        </div>
                                        <div class="mb-3">
                                            <label for="descripcion" class="form-label">Peso</label>
                                            <input type="number" class="form-control" name="peso" autocomplete="off"
                                            value="{{$capacidadlogro->peso}}">
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
              </td>
            </tr>
            @endforeach
          </tbody>
        </table>
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