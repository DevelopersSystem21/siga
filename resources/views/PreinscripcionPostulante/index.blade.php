@extends('layouts.bootstrap')
@section('title', 'Preincripción de Postulantes')
<link href="datatables/DataTables-1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
<link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
<link href="https://cdn.datatables.net/buttons/2.3.6/css/buttons.bootstrap5.min.css" rel="stylesheet"/>
<link href="https://cdn.datatables.net/colreorder/1.6.2/css/colReorder.bootstrap5.min.css" rel="stylesheet"/>

<style>
    header{
    background: #8E2DE2;
    background: -webkit-linear-gradient(to right, #4A00E0, #8E2DE2);
    background: linear-gradient(to right, #4A00E0, #8E2DE2);
}

/*estilos para la tabla*/
table th {
    background-color: #337ab7 !important;
    color: white;
}
table>tbody>tr>td {
    vertical-align: middle !important;
}

/*para alinear los botones y cuadro de busqueda*/
.btn-group, .btn-group-vertical {
    position: absolute !important;
}
</style>

@section('content_header')
    <h1 class="m-0 text-secondary">Preincripción de Postulantes</h1>
@endSection

@section('content')
    <div class="clas text-secondary">
    <!-- Modal de registro -->
        <div class="clas col-12">
        <div class="modal fade" id="modalRegistrar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                    <h1 class="modal-title fs-5 mr-3" id="exampleModalLabel">Agregar Datos</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="{{route('actividades.store')}}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="mb-2">
                                        <label for="descripcion" class="form-label">Nombre</label>
                                        <input type="text" class="form-control" id="descripcion" aria-describedby="emailHelp">
                                      </div>
                                    <div class="mb-2">
                                      <label for="fecha-ini" class="form-label">Apellidos</label>
                                      <input type="text" class="form-control" id="fecha-ini" aria-describedby="emailHelp">
                                    </div>
                                    <div class="mb-2 text-secondary">
                                        <label for="fecha-fin" class="form-label">Sexo</label>
                                        <select class="form-select text-secondary" aria-label="Default select example">
                                            <option selected>Seleccionar</option>
                                            <option value="masculino">Masculino</option>
                                            <option value="femenino">Femenino</option>
                                          </select>
                                    </div>
                                    <div class="mb-2">
                                        <label for="fecha-fin" class="form-label">Dirección</label>
                                        <input type="text" class="form-control" id="fecha-fin">
                                    </div>
                                    <div class="mb-2">
                                        <label for="fecha-fin" class="form-label">Teléfono</label>
                                        <input type="text" class="form-control" id="fecha-fin">
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                      <div class="mb-2">
                                         <label for="fecha-fin" class="form-label">Doc. Identificación</label>
                                         <select class="form-select" aria-label="Default select example">
                                            <option selected>Seleeccionar</option>
                                            <option value="masculino">DNI</option>
                                            <option value="femenino">Pasaporte</option>
                                            <option value="femenino">Carnet de extranjería</option>
                                          </select>
                                      </div>
                                      <div class="mb-2">
                                            <label for="fecha-ini" class="form-label">Num. Identificación</label>
                                            <input type="text" class="form-control" id="fecha-ini" aria-describedby="emailHelp">
                                       </div>
                                       <div class="mb-2">
                                            <label for="fecha-fin" class="form-label">País</label>
                                            <select class="form-select" aria-label="Default select example">
                                                <option selected>Seleccionar</option>
                                                <option value="masculino">Perú</option>
                                                <option value="masculino">Ecuador</option>
                                                <option value="femenino">Chile</option>
                                            </select>
                                      </div>
                                      <div class="mb-2">
                                            <label for="fecha-fin" class="form-label">Departamento</label>
                                            <select class="form-select" aria-label="Default select example">
                                                <option selected>Seleccionar</option>
                                                <option value="masculino">Ancash</option>
                                                <option value="femenino">Arequipa</option>
                                            </select>
                                       </div>
                                       <div class="mb-2">
                                            <label for="fecha-fin" class="form-label">Ciudad</label>
                                            <select class="form-select" aria-label="Default select example">
                                                <option selected>Seleccionar</option>
                                                <option value="masculino">Huaraz</option>
                                                <option value="femenino">Lima</option>
                                            </select>
                                       </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="mb-2">
                                        <label for="fecha-ini" class="form-label">Email</label>
                                        <input type="email" class="form-control" id="fecha-ini" aria-describedby="emailHelp">
                                    </div>
                                    <div class="mb-2">
                                        <label for="fecha-ini" class="form-label">Código</label>
                                        <input type="text" class="form-control" id="fecha-ini" aria-describedby="emailHelp">
                                    </div>
                                    <div class="mb-2">
                                        <label for="fecha-ini" class="form-label">Estado</label>
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
                                    <div class="mb-2">
                                        <label for="fecha-fin" class="form-label">Programa Ofertado</label>
                                        <select class="form-select" aria-label="Default select example">
                                            <option selected>Seleccionar</option>
                                            <option value="masculino">Inglés Básico</option>
                                            <option value="femenino">Inglés Intermedio</option>
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
    
        <div class="container-fluid bg-white">
            <div class="row pt-4 mb-4">
                 <!--boton crear-->
                 <div class="col-lg-12" >
                    <button class="btn btn-primary btn-sm shadow" data-bs-toggle="modal" data-bs-target="#modalRegistrar">
                        <i class="fa fa-circle-plus mr-1" aria-hidden="true"></i>Registrar preinscricpción
                    </button>
                </div> 
            </div>
            <div class="row p-4 mb-4 d-flex justify-content-center align-items-center text-secondary">
               
                                <!-- Campo  progrma-->
                <div class="col-lg-4">
                    <label for="fecha-fin" class="form-label">Programa de estudio</label>
                        <select class="form-select" aria-label="Default select example">
                            <option selected>Seleccionar</option>
                            <option value="masculino">Guías Oficial de Montaña</option>
                            <option value="femenino">Guía Oficial de Caminata</option>
                        </select>
                </div>
                                   
            <!-- Fecha desde -->
            <div class="col-lg-3">
                    <label for="fecha_inicio" class="form-label ">Desde</label>
                        <input type="date" class="form-control" id="fecha_inicio" name="fecha_inicio" 
                        value="">
                </div>
                <!-- Fecha hasta -->
                <div class="col-lg-3">
                    <label for="fecha_inicio" class="form-label">Hasta</label>
                        <input type="date" class="form-control" id="fecha_inicio" name="fecha_inicio" 
                        value="">
                </div>
                <div class="col-lg-2 text-center p-2 shadow border-start-primary bg-white rounded">
                  <!-- BOTON IMPRIMIR -->
                
                        <button class="btn btn-sm bg-secondary mr-2" title="Imprimir" data-bs-toggle="modal" data-bs-target="#modalRegistrar">
                            <i class="fa fa-print fa-lg" aria-hidden="true"></i>
                       </button>
                    
                     <!-- BOTON EXCEL -->
                   
                        <button class="btn btn-sm bg-success mr-2" title="Exportar en Excel" data-bs-toggle="modal" data-bs-target="#modalRegistrar">
                            <i class="fa fa-file-excel fa-lg" aria-hidden="true"></i>
                       </button>
                   
                     <!-- BOTON PDF -->
                   
                        <button class="btn btn-sm bg-danger" title="Exportar en PDF" data-bs-toggle="modal" data-bs-target="#modalRegistrar">
                            <i class="fa fa-file-pdf fa-lg" aria-hidden="true"></i>
                       </button>
                    </div>
                </div>
          
            </div>
            <!-- Tabla de Registro -->
            <div class="table-responsive bg-white rounded text-secondary">        
                <table class="table table-striped table-hover" id="preinscripcion">
                    <thead>
                        <tr>
                        <th class=".text-dark-emphasis">N° de documento</th>
                            <th class=".text-dark-emphasis">Apellidos y Nombres</th>
                            <th class=".text-dark-emphasis">E-mail</th>
                            <th class=".text-dark-emphasis">N° Celular</th>
                            <th class=".text-dark-emphasis">Programa Académico</th>

                            <th class="d-flex justify-content-end pr-5">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                     
                        <tr>
                            <td>45789658</td>
                            <td>Reyes Ramos Jose Ingnacio</td>
                            <td>jose@gmail.com</td>
                            <td>965847896</td>
                            <td>Guía Oficial de Montaña</td>
                            <td class="d-flex justify-content-end pr-5">
                            <button class="btn btn-primary btn-sm mr-1" data-bs-toggle="modal" 
                                data-bs-target="#modalEditar">
                                <i title="Editar" class="fas fa-fw fa-pen" aria-hidden="true"></i>
                                </button>
                                <a href="#" title="Eliminar">
                                <button class="btn btn-danger btn-sm mr-1"><i class="fas fa-fw fa-trash" aria-hidden="true"></i></button>
                                </a>
                                <a href="#" title="Incribir">
                                <button class="btn bg-warning btn-sm"><i class="fas fa-fw fa-file" aria-hidden="true"></i></button>
                                </a>
                            </td>
                            <!-- Modal -->
                            <div class="modal fade" id="modalEditar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar datos</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="{{route('actividades.store')}}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-4">
                                                    <div class="mb-2">
                                                        <label for="descripcion" class="form-label">Nombre</label>
                                                        <input type="text" class="form-control" id="descripcion" aria-describedby="emailHelp">
                                                      </div>
                                                    <div class="mb-2">
                                                      <label for="fecha-ini" class="form-label">Apellidos</label>
                                                      <input type="text" class="form-control" id="fecha-ini" aria-describedby="emailHelp">
                                                    </div>
                                                    <div class="mb-2">
                                                        <label for="fecha-fin" class="form-label">Sexo</label>
                                                        <select class="form-select" aria-label="Default select example">
                                                            <option selected>Select Option</option>
                                                            <option value="masculino">Masculino</option>
                                                            <option value="femenino">Femenino</option>
                                                          </select>
                                                    </div>
                                                    <div class="mb-2">
                                                        <label for="fecha-fin" class="form-label">Direccion</label>
                                                        <input type="text" class="form-control" id="fecha-fin">
                                                    </div>
                                                    <div class="mb-2">
                                                        <label for="fecha-fin" class="form-label">Telefono</label>
                                                        <input type="text" class="form-control" id="fecha-fin">
                                                    </div>
                                                </div>
                                                <div class="col-4">
                                                      <div class="mb-2">
                                                         <label for="fecha-fin" class="form-label">Doc. Identificacion</label>
                                                         <select class="form-select" aria-label="Default select example">
                                                            <option selected>Select Option</option>
                                                            <option value="masculino">DNI</option>
                                                            <option value="femenino">Pasaporte</option>
                                                          </select>
                                                      </div>
                                                      <div class="mb-2">
                                                            <label for="fecha-ini" class="form-label">Num. Identificacion</label>
                                                            <input type="text" class="form-control" id="fecha-ini" aria-describedby="emailHelp">
                                                       </div>
                                                       <div class="mb-2">
                                                            <label for="fecha-fin" class="form-label">País</label>
                                                            <select class="form-select" aria-label="Default select example">
                                                                <option selected>Select Option</option>
                                                                <option value="masculino">Peru</option>
                                                                <option value="masculino">China</option>
                                                                <option value="femenino">Nepal</option>
                                                            </select>
                                                      </div>
                                                      <div class="mb-2">
                                                            <label for="fecha-fin" class="form-label">Departamento</label>
                                                            <select class="form-select" aria-label="Default select example">
                                                                <option selected>Select Option</option>
                                                                <option value="masculino">Ancash</option>
                                                                <option value="femenino">Trujillo</option>
                                                            </select>
                                                       </div>
                                                       <div class="mb-2">
                                                            <label for="fecha-fin" class="form-label">Ciudad</label>
                                                            <select class="form-select" aria-label="Default select example">
                                                                <option selected>Select Option</option>
                                                                <option value="masculino">Huaraz</option>
                                                                <option value="femenino">Chimbote</option>
                                                            </select>
                                                       </div>
                                                </div>
                                                <div class="col-4">
                                                    <div class="mb-2">
                                                        <label for="fecha-ini" class="form-label">Email</label>
                                                        <input type="email" class="form-control" id="fecha-ini" aria-describedby="emailHelp">
                                                    </div>
                                                    <div class="mb-2">
                                                        <label for="fecha-ini" class="form-label">Codigo</label>
                                                        <input type="text" class="form-control" id="fecha-ini" aria-describedby="emailHelp">
                                                    </div>
                                                    <div class="mb-2">
                                                        <label for="fecha-ini" class="form-label">Estado</label>
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
                                                    <div class="mb-2">
                                                        <label for="fecha-fin" class="form-label">Programa Academico</label>
                                                        <select class="form-select" aria-label="Default select example">
                                                            <option selected>Select Option</option>
                                                            <option value="masculino">Ingles Basico</option>
                                                            <option value="femenino">Ingles Intermedio</option>
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
                        </tr>
                        <tr>
                            <td>45789658</td>
                            <td>Lopez Ramirez Junior Raul</td>
                            <td>lopez@gmail.com</td>
                            <td>965847896</td>
                            <td>Guía Oficial de Caminata</td>
                            <td class="d-flex justify-content-end pr-5">
                                <button class="btn btn-primary btn-sm mr-1" data-bs-toggle="modal" 
                                data-bs-target="#modalEditar">
                                <i title="Editar" class="fas fa-fw fa-pen" aria-hidden="true"></i>
                                </button>
                                <a href="#" title="Eliminar">
                                <button class="btn btn-danger btn-sm mr-1"><i class="fas fa-fw fa-trash" aria-hidden="true"></i></button>
                                </a>
                                <a href="#" title="Incribir">
                                <button class="btn bg-warning btn-sm"><i class="fas fa-fw fa-file" aria-hidden="true"></i></button>
                                </a>
                            </td>
                            <!-- Modal -->
                            <div class="modal fade" id="modalEditar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar datos</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="{{route('actividades.store')}}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-4">
                                                    <div class="mb-2">
                                                        <label for="descripcion" class="form-label">Nombre</label>
                                                        <input type="text" class="form-control" id="descripcion" aria-describedby="emailHelp">
                                                      </div>
                                                    <div class="mb-2">
                                                      <label for="fecha-ini" class="form-label">Apellidos</label>
                                                      <input type="text" class="form-control" id="fecha-ini" aria-describedby="emailHelp">
                                                    </div>
                                                    <div class="mb-2">
                                                        <label for="fecha-fin" class="form-label">Sexo</label>
                                                        <select class="form-select" aria-label="Default select example">
                                                            <option selected>Select Option</option>
                                                            <option value="masculino">Masculino</option>
                                                            <option value="femenino">Femenino</option>
                                                          </select>
                                                    </div>
                                                    <div class="mb-2">
                                                        <label for="fecha-fin" class="form-label">Direccion</label>
                                                        <input type="text" class="form-control" id="fecha-fin">
                                                    </div>
                                                    <div class="mb-2">
                                                        <label for="fecha-fin" class="form-label">Telefono</label>
                                                        <input type="text" class="form-control" id="fecha-fin">
                                                    </div>
                                                </div>
                                                <div class="col-4">
                                                      <div class="mb-2">
                                                         <label for="fecha-fin" class="form-label">Doc. Identificacion</label>
                                                         <select class="form-select" aria-label="Default select example">
                                                            <option selected>Select Option</option>
                                                            <option value="masculino">DNI</option>
                                                            <option value="femenino">Pasaporte</option>
                                                          </select>
                                                      </div>
                                                      <div class="mb-2">
                                                            <label for="fecha-ini" class="form-label">Num. Identificacion</label>
                                                            <input type="text" class="form-control" id="fecha-ini" aria-describedby="emailHelp">
                                                       </div>
                                                       <div class="mb-2">
                                                            <label for="fecha-fin" class="form-label">País</label>
                                                            <select class="form-select" aria-label="Default select example">
                                                                <option selected>Select Option</option>
                                                                <option value="masculino">Peru</option>
                                                                <option value="masculino">China</option>
                                                                <option value="femenino">Nepal</option>
                                                            </select>
                                                      </div>
                                                      <div class="mb-2">
                                                            <label for="fecha-fin" class="form-label">Departamento</label>
                                                            <select class="form-select" aria-label="Default select example">
                                                                <option selected>Select Option</option>
                                                                <option value="masculino">Ancash</option>
                                                                <option value="femenino">Trujillo</option>
                                                            </select>
                                                       </div>
                                                       <div class="mb-2">
                                                            <label for="fecha-fin" class="form-label">Ciudad</label>
                                                            <select class="form-select" aria-label="Default select example">
                                                                <option selected>Select Option</option>
                                                                <option value="masculino">Huaraz</option>
                                                                <option value="femenino">Chimbote</option>
                                                            </select>
                                                       </div>
                                                </div>
                                                <div class="col-4">
                                                    <div class="mb-2">
                                                        <label for="fecha-ini" class="form-label">Email</label>
                                                        <input type="email" class="form-control" id="fecha-ini" aria-describedby="emailHelp">
                                                    </div>
                                                    <div class="mb-2">
                                                        <label for="fecha-ini" class="form-label">Codigo</label>
                                                        <input type="text" class="form-control" id="fecha-ini" aria-describedby="emailHelp">
                                                    </div>
                                                    <div class="mb-2">
                                                        <label for="fecha-ini" class="form-label">Estado</label>
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
                                                    <div class="mb-2">
                                                        <label for="fecha-fin" class="form-label">Programa Academico</label>
                                                        <select class="form-select" aria-label="Default select example">
                                                            <option selected>Select Option</option>
                                                            <option value="masculino">Ingles Basico</option>
                                                            <option value="femenino">Ingles Intermedio</option>
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
                        </tr>
                        
                    </tbody>
                </table>
            </div> 
             


        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.4.1/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.4.1/js/responsive.bootstrap5.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#preinscripcion').DataTable({
                responsive:true,
                autowidth:false
            });
        });
    </script>
@endSection