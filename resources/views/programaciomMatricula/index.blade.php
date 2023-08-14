@extends('layouts.bootstrap')

@section('title', 'Programación de Matrícula')

@section('content_header')
    <h1 class="m-0 text-dark">Porgramación de Matrícula</h1>
@endSection

@section('content')
    <div class="clas row">
         <!-- Modal de registro -->
        <di class="clas col-12">
            <div class="modal fade" id="modalRegistrar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content"> 
                        <div class="modal-header bg-primary">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Registrar datos</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="{{route('actividades.store')}}" method="POST">
                                @csrf
                                <div class="mb-3">
                                    <label for="nombre" class="form-label">Nombre</label>
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
                            <th class=".text-dark-emphasis">Periodo Académico</th>
                            <th class=".text-dark-emphasis">Fecha inicio</th>
                            <th class=".text-dark-emphasis">Fecha final</th>
                            <th class=".text-dark-emphasis">Monto por matrícula</th>
                            <th class="d-flex justify-content-end pr-5">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                  
                        <tr>
                            <td>2023 - I</td>
                            <td>10-05-2023</td>
                            <td>20-05-2023</td>
                            <td>S/ 50.00</td>
                            <td class="d-flex justify-content-end pr-5">
                                <button class="btn btn-primary btn-sm mr-3" data-bs-toggle="modal" 
                                data-bs-target="#modalEditar">
                                <i class="fas fa-fw fa-pen" aria-hidden="true"></i> Editar
                                </button>
                                <a href="" title="Ver">
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
                                        <form action="" method="POST">
                                            @csrf
                                            @method('put')
                                            <div class="mb-3">
                                                <label for="descripcion" class="form-label">Descripcion</label>
                                                <input type="text" class="form-control" id="descripcion" aria-describedby="emailHelp">
                                              </div>
                                            <div class="mb-3">
                                              <label for="fecha-ini" class="form-label">Fecha Inicio</label>
                                              <input type="date" class="form-control" id="fecha-ini" aria-describedby="emailHelp">
                                            </div>
                                            <div class="mb-3">
                                                <label for="fecha-fin" class="form-label">Fecha Fin</label>
                                                <input type="date" class="form-control" id="fecha-fin">
                                              </div>
                                              <div class="mb-3">
                                                  <label for="upload" class="form-label">Subir reglamento</label>
                                                  <input type="file" class="form-control" id="upload">
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
                       
                    </tbody>
                </table>
            </div>
                

            </div>
        </di>
    </div>
@endSection
