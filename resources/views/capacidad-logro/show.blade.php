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
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Indicador</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="{{route('indicador.store',$capacidadlogros->id)}}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-12">
                                    <div class="mb-3">
                                        <label for="descripcion" class="form-label">Nombre</label>
                                        <input type="text" class="form-control" name="nombre" autocomplete="off">
                                    </div>
                                    <div class="mb-3">
                                        <input type="hidden" class="form-control" name="id_capacidad_logros" autocomplete="off"
                                        value="{{$capacidadlogros->id}}">
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
                <p class="mt-2">Unidad Didactica: <b>{{$capacidadlogros->unidad_didacticas->nombre}}</b></p>
                <p>Capacidad Logro: <b>{{$capacidadlogros->nombre}}</b></p>
        </div>
    </div>
    <div class="row d-flex justify-content-start align-items-center pr-3">
        <div class="col-12 d-flex justify-content-between mr-3">
             <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#modalRegistrar">
            <i class="fa fa-circle-plus" aria-hidden="true"></i>Agregar Indicador</button>
            <a href="{{route('unidades-didacticas.show',$capacidadlogros->unidad_didacticas->id)}}">
            <button class="btn btn-sm shadow mr-1 border hover-btn-dark" title="Ir a Unidades Didacticas">
                <i class="fa fa-circle-left mr-2 fa-lg text-primary" aria-hidden="true"></i>Unidad Didactica
              </button>
            </a>
    </div>
    <div class="table-responsive mt-3">
        <table class="table table-striped table-hover table-sm">
          <thead class="bg-gradient-info">
            <tr>
              <th class=".text-dark-emphasis">Id</th>
              <th class=".text-dark-emphasis">Nombre Indicador</th>
              <th class="d-flex justify-content-end pr-5">Acciones</th>
            </tr>
          </thead>
          <tbody>
              @foreach ($indicadores as $indicador)
            <tr>
              <td>{{$indicador->id}}</td>
              <td>{{$indicador->nombre}}</td>
              <td class="d-flex justify-content-end pr-5">
                  <button class="btn btn-primary btn-sm mr-3" data-bs-toggle="modal" 
                      data-bs-target="#modalEditar{{$indicador->id}}" title="Editar">
                      <i class="fas fa-fw fa-pen" aria-hidden="true"></i>
                  </button>
                  <form id="deleteForm" action="{{ route('indicador.destroy',$indicador->id) }}" method="POST" style="display: inline;">
                    @csrf
                    @method('DELETE')
                    <button class="btn btn-danger btn-sm mr-3 deleteButton" title="Eliminar" id="deleteItem">
                        <i class="fas fa-fw fa-trash" aria-hidden="true"></i>
                    </button>
                </form>
                  <div class="modal fade" id="modalEditar{{$indicador->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-md">
                    <div class="modal-content">
                        <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Indicador</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="{{route('indicador.update',$indicador)}}" method="POST">
                                @csrf
                                @method('put')
                                <div class="row">
                                    <div class="col-12">
                                        <div class="mb-3">
                                            <label for="descripcion" class="form-label">Nombre</label>
                                            <input type="text" class="form-control" name="nombre" autocomplete="off"
                                            value="{{$indicador->nombre}}">
                                        </div>
                                        <div class="mb-3">
                                            <input type="hidden" class="form-control" name="id_capacidad_logros" autocomplete="off"
                                            value="{{$capacidadlogros->id}}">
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