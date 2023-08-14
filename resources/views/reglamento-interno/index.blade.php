@extends('adminlte::page')

@section('title', 'SIGA CEAM')
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="{{ asset('css/style.css') }}">


@section('content_header')
    <h1 class="m-0 text-dark">Reglamento Interno</h1>
@stop

@section('content')
    <div class="row">
        <div class="col-12">
            
            
            <div class="modal fade" id="modalRegistrar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Reglamento</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="{{route('actividades.store')}}" method="POST">
                            @csrf
                            <div class="mb-3">
                                <label for="descripcion" class="form-label">Nombre</label>
                                <input type="file" class="form-control" id="descripcion" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="descripcion" class="form-label">Fecha subida</label>
                                <input type="date" class="form-control" id="descripcion" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="fecha-fin" class="form-label">Examen Admicion</label>
                                <select class="form-select" aria-label="Default select example">
                                    <option selected>Select Option</option>
                                    <option value="masculino">2023 I</option>
                                    <option value="femenino">2023 II</option>
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
                        <i class="fa fa-circle-plus" aria-hidden="true"></i>Subir reglamento</button>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th class=".text-dark-emphasis">NOMBRE</th>
                            <th class="d-flex justify-content-end pr-5">ACCIONES</th>
                        </tr>
                    </thead>
                    <tbody>
                     
                        <tr>
                            <td>2023 - I</td>
                            <td class="d-flex justify-content-end pr-5">
                                <button class="btn btn-primary btn-sm mr-3" data-bs-toggle="modal" 
                                data-bs-target="#modalEditar">
                                <i class="fas fa-fw fa-pen" aria-hidden="true"></i> Editar
                                </button>
                                <a href="#" title="Ver">
                                    <button class="btn btn-danger btn-sm"><i class="fas fa-fw fa-trash" aria-hidden="true"></i> Eliminar</button>
                                </a>
                            </td>
                            <!-- Modal -->
                            <div class="modal fade" id="modalEditar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar datos</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="{{route('actividades.store')}}" method="POST">
                                            @csrf
                                            <div class="mb-3">
                                                <label for="descripcion" class="form-label">Nombre</label>
                                                <input type="file" class="form-control" id="descripcion" aria-describedby="emailHelp">
                                            </div>
                                            <div class="mb-3">
                                                <label for="descripcion" class="form-label">Fecha subida</label>
                                                <input type="date" class="form-control" id="descripcion" aria-describedby="emailHelp">
                                            </div>
                                            <div class="mb-3">
                                                <label for="fecha-fin" class="form-label">Examen Admicion</label>
                                                <select class="form-select" aria-label="Default select example">
                                                    <option selected>Select Option</option>
                                                    <option value="masculino">2023 I</option>
                                                    <option value="femenino">2023 II</option>
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
                        <tr>
                            <td>2023 - II</td>
                            <td class="d-flex justify-content-end pr-5">
                                <button class="btn btn-primary btn-sm mr-3" data-bs-toggle="modal" 
                                data-bs-target="#modalEditar">
                                <i class="fas fa-fw fa-pen" aria-hidden="true"></i> Editar
                                </button>
                                <a href="#" title="Ver">
                                    <button class="btn btn-danger btn-sm"><i class="fas fa-fw fa-trash" aria-hidden="true"></i> Eliminar</button>
                                </a>
                            </td>
                            <!-- Modal -->
                            <div class="modal fade" id="modalEditar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar datos</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="{{route('actividades.store')}}" method="POST">
                                            @csrf
                                            <div class="mb-3">
                                                <label for="descripcion" class="form-label">Nombre</label>
                                                <input type="file" class="form-control" id="descripcion" aria-describedby="emailHelp">
                                            </div>
                                            <div class="mb-3">
                                                <label for="descripcion" class="form-label">Fecha subida</label>
                                                <input type="date" class="form-control" id="descripcion" aria-describedby="emailHelp">
                                            </div>
                                            <div class="mb-3">
                                                <label for="fecha-fin" class="form-label">Examen Admicion</label>
                                                <select class="form-select" aria-label="Default select example">
                                                    <option selected>Select Option</option>
                                                    <option value="masculino">2023 I</option>
                                                    <option value="femenino">2023 II</option>
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
                        
                    </tbody>
                </table>
            </div>
            {{-- <ul>
                @foreach ($actividads as $actividad)
                <li>{{$actividad->nombre}}</li>
                <li>
                    <a href="{{route('actividades.show', $actividad->id)}}">{{$actividad->nombre}}</a>
                </li>
                @endforeach
            </ul> --}}
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
@stop