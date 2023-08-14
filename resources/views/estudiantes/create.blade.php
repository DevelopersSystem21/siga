@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')
<link href="datatables/DataTables-1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
<link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
<link href="https://cdn.datatables.net/buttons/2.3.6/css/buttons.bootstrap5.min.css" rel="stylesheet"/>
<link href="https://cdn.datatables.net/colreorder/1.6.2/css/colReorder.bootstrap5.min.css" rel="stylesheet"/>


@section('content_header')
    <h1 class="m-0 text-dark">Datos Personales</h1>
@stop

@section('content')
<div class="card">
    <div class="row m-4">
        <div class="col-12">
            <form action="{{route('estudiantes.store')}}" method="POST">
                @csrf
                <div class="row">
                    <div class="col-4 col-sx-12">
                        <div class="mb-2">
                            <label for="descripcion" class="form-label">Nombre <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" name="nombre" autocomplete="off" required>
                          </div>
                        <div class="mb-2">
                          <label for="fecha-ini" class="form-label">Apellidos <span class="text-danger">*</span></label>
                          <input type="text" class="form-control" name="apellidos" autocomplete="off" required>
                        </div>
                        <div class="mb-2">
                            <label for="fecha-fin" class="form-label" required>Genero <span class="text-danger">*</span></label>
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
                    <div class="col-4 col-sx-12">
                        <div class="mb-2 col-sx-12">
                            <label for="fecha-ini" class="form-label">Email <span class="text-danger">*</span></label>
                            <input type="email" class="form-control" name="email" autocomplete="off" required>
                        </div>
                        <div class="mb-2 col-sx-12">
                            <label for="fecha-ini" class="form-label">Codigo <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" name="codigo" autocomplete="off" required>
                        </div>
                        <div class="mb-2 col-sx-12">
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
                        <div class="mb-2 col-sx-12">
                            <label for="fecha-fin" class="form-label">Programa Academico <span class="text-danger">*</span></label>
                            <select class="form-select" name="id_programa_academico" id="id_programa_academico" required>
                                <option selected value="">Seleccione</option>
                                @foreach ($programa_academicos as $programa_academico)
                                <option value="{{$programa_academico->id}}">{{$programa_academico->nombre}}</option>
                                @endforeach
                            </select>
                       </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <a class="text-decoration-none text-reset" href="{{ route('home') }}">
                        <button type="button" class="btn btn-secondary mr-4 fas fa-arrow-left" data-bs-dismiss="modal"></button>
                    </a>
                    
                    <button type="submit" class="btn btn-primary">Registrar</button>
                 </div>
              </form>     
        </div>
    </div>
</div>
    
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script>
        function showDepartamentos(id) {
            $.get("/api/selectdepartamentos/" + id, function(departamentos) {
                let selectDepartamento = document.querySelector("#iddep");
                selectDepartamento.innerHTML = "";

                // Agregar opción "Seleccione"
                let selectOption = document.createElement("option");
                selectOption.setAttribute("value", "");
                selectOption.innerHTML = "Seleccione";
                selectDepartamento.appendChild(selectOption);

                departamentos.forEach(departamento => {
                    let option = document.createElement("option");
                    option.setAttribute("value", departamento.iddep);
                    option.innerHTML = departamento.nomdepa;
                    selectDepartamento.appendChild(option);
                });
            });
        }

        function showCiudades(id) {
            $.get("/api/selectciudades/" + id, function(ciudades) {
                let selectCiudad = document.querySelector("#id_ciudad");
                selectCiudad.innerHTML = "";
                ciudades.forEach(ciudad => {
                    let option = document.createElement("option");
                    option.setAttribute("value", ciudad.idCiudad);
                    option.innerHTML = ciudad.nomciu;
                    selectCiudad.appendChild(option);
                    //console.log(ciudad.idCiudad,ciudad.nomciu);
                });
            });
        }
    </script>

    <script>
        function showDepartamentos2(select) {
            var idpais = select.value;
            var selectDepartamento = select.parentNode.nextElementSibling.querySelector('.iddepEdit');
            selectDepartamento.innerHTML = "";

            var selectOption = document.createElement("option");
            selectOption.setAttribute("value", "");
            selectOption.innerHTML = "Seleccione";
            selectDepartamento.appendChild(selectOption);

            $.get("/api/listdepartamentos/" + idpais, function(departamentos) {
                departamentos.forEach(function(departamento) {
                    var option = document.createElement("option");
                    option.setAttribute("value", departamento.iddep);
                    option.innerHTML = departamento.nomdepa;
                    selectDepartamento.appendChild(option);
                });
            });
        }

        function showCiudades2(select) {
            var iddep = select.value;
            var selectCiudad = select.parentNode.nextElementSibling.querySelector('.id_ciudadEdit');
            console.log(selectCiudad);
            if (selectCiudad) {
                selectCiudad.innerHTML = "";

                $.get("/api/listciudades/" + iddep, function(ciudades) {
                    ciudades.forEach(function(ciudad) {
                        var option = document.createElement("option");
                        option.setAttribute("value", ciudad.idCiudad);
                        option.innerHTML = ciudad.nomciu;
                        selectCiudad.appendChild(option);
                    });
                });
            } else {
                console.error("No se pudo encontrar el elemento selectCiudad.");
            }
        }
    </script>
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

    @if (session('error'))
        <script>
            Swal.fire({
                title: 'Error',
                text: '{{ session('error') }}',
                icon: 'error'
            });
        </script>
    @endif
  
@stop
