<div class="modal fade" id="modalRegistrarEstudiante" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Estudiante</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="{{route('estudiantes.store')}}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-4">
                                    <div class="mb-2">
                                        <label for="descripcion" class="form-label">Nombre <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" name="nombre" autocomplete="off" required>
                                      </div>
                                    <div class="mb-2">
                                      <label for="fecha-ini" class="form-label">Apellidos <span class="text-danger">*</span></label>
                                      <input type="text" class="form-control" name="apellidos" autocomplete="off" required>
                                    </div>
                                    <div class="mb-2">
                                        <label for="fecha-fin" class="form-label" required>Sexo <span class="text-danger">*</span></label>
                                        <select class="form-select" name="sexo">
                                            <option selected value="">Seleccione</option>
                                            <option value="masculino">Masculino</option>
                                            <option value="femenino">Femenino</option>
                                          </select>
                                    </div>
                                    <div class="mb-2">
                                        <label for="fecha-fin" class="form-label" required>Direccion <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" name="direccion" autocomplete="off" required>
                                    </div>
                                    <div class="mb-2">
                                        <label for="fecha-fin" class="form-label" required>Telefono <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" name="telefono" autocomplete="off">
                                    </div>
                                    <div class="mb-2">
                                        <label for="fecha-ini" class="form-label">Email <span class="text-danger">*</span></label>
                                        <input type="email" class="form-control" name="email" autocomplete="off" required>
                                    </div>
                                </div>
                                <div class="col-4">
                                      <div class="mb-2">
                                         <label for="fecha-fin" class="form-label">Doc. Identificacion <span class="text-danger">*</span></label>
                                         <select class="form-select" name="id_tipo_identificacion" id="id_tipo_identificacion" required>
                                            <option selected value="">Seleccione</option>
                                            @foreach ($tipo_identificacions as $tipo_identificacion)
                                            <option value="{{$tipo_identificacion->id}}">{{$tipo_identificacion->nombre}}</option>
                                            @endforeach
                                        </select>
                                      </div>
                                      <div class="mb-2">
                                            <label for="fecha-ini" class="form-label">Num. Identificacion <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="numiden" autocomplete="off" required>
                                       </div>
                                       <div class="mb-2">
                                            <label for="idpais" class="form-label">País <span class="text-danger">*</span></label>
                                            <select class="form-select" name="idpais" id="idpais" required
                                               onchange="showDepartamentos(this.value)">
                                                <option selected value="">Seleccione</option>
                                                @foreach ($paises as $pais)
                                                <option value="{{$pais->idpais}}">{{$pais->nompais}}</option>
                                                @endforeach
                                            </select>
                                      </div>
                                      <div class="mb-2">
                                            <label for="iddep" class="form-label">Departamento <span class="text-danger">*</span></label>
                                            <select class="form-select" name="iddep" id="iddep"
                                            onchange="showCiudades(this.value)" required></select>
                                       </div>
                                       <div class="mb-2">
                                            <label for="idCiudad" class="form-label">Ciudad <span class="text-danger">*</span></label>
                                            <select class="form-select" name="id_ciudad" id="id_ciudad" required></select>
                                       </div>
                                       
                                </div>
                                <div class="col-4">
                                    <div class="mb-2">
                                        <label for="birthdate" class="form-label">Fecha Nacimiento <span class="text-danger">*</span></label>
                                        <input type="date" class="form-control" name="birthdate" autocomplete="off">
                                    </div>
                                    <div class="mb-2">
                                        <label for="fecha-ini" class="form-label">Codigo <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" name="codigo" autocomplete="off" required>
                                    </div>
                                    <div class="mb-2">
                                        <label for="fecha-ini" class="form-label">Estado <span class="text-danger">*</span></label>
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
                                        <label for="fecha-fin" class="form-label">Programa Academico <span class="text-danger">*</span></label>
                                        <select class="form-select" name="id_programa_academico" id="id_programa_academico" required>
                                            <option selected value="">Seleccione</option>
                                            @foreach ($programa_academicos as $programa_academico)
                                            <option value="{{$programa_academico->id}}">{{$programa_academico->nombre}}</option>
                                            @endforeach
                                        </select>
                                   </div>
                                   <div class="mb-2">
                                        <label for="id_apoderado" class="form-label">Apoderado</label>
                                        <select class="form-select example-registrar" name="id_apoderado">
                                            <option value="">Selecciona Apoderado</option>
                                            @foreach ($personas as $persona)
                                            <option value="{{$persona->id }}">{{ $persona->nombre }} {{ $persona->apellidos }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="mb-2">
                                        <a href="{{ route('apoderados.index') }}" class="btn btn-primary">Ir a Apoderados</a>

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
