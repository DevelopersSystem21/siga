@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')

@section('content_header')
    <h1 class="m-0 text-dark">Apertura de unidades didácticas</h1>
@stop

@section('content')
    <div class="row" id="app">
        <div class="col-12">
            <div class="row">
                <div class="col-4">
                    
                </div>
                <div class="col-4"></div>
                <div class="col-4 text-end">
                    <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalRegistrar">
                        <i class="fa fa-circle-plus me-2" aria-hidden="true"></i>Aperturar</button>
                </div>
            </div>
            @if (session('status'))
                <div class="row d-flex justify-content-center ">
                    <div class="col-6">
                        <div class="alert alert-success h6">
                            {{ session('status') }}
                        </div>
                    </div>
                </div>
            @endif
            <div class="row m-4">
                <div class="col-12">
                    <div class="card table-responsive">
                        <table class="table mb-2 table-striped table-hover table-sm" id="lista" style="font-size: 13px">
                            <thead class="bg-gradient-info">
                                <tr>
                                    <th class="text-wrap-emphasis">NOMBRE</th>
                                    <th class="text-wrap-emphasis">CUPO</th>
                                    <th class="text-wrap-emphasis">FECHA</th>
                                    <th class="text-wrap-emphasis">PERIODO</th>
                                    <th class="text-wrap-emphasis">DOCENTE</th>
                                    <th class="text-wrap-emphasis">GRUPO</th>
                                    <th class="text-wrap-emphasis">HORARIO</th>
                                    <th class="text-wrap-emphasis text-center">ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="curso in unidadesFiltradas">
                                    <td><b>@{{ curso.unidad_didactica?.nombre }} </b><br>@{{ curso.codigo }}</td>
                                    <td>
                                        @{{ curso.matricula_unidades_count }} (@{{ curso.cupo_maximo }})
                                    </td>
                                    <td>
                                        <b>Desde </b>@{{ curso.inicio }} <br><b>Hasta</b> @{{ curso.fin }}
                                    </td>
                                    <td>@{{ curso.periodo.nombre }}</td>
                                    <td v-if="curso.docente">@{{ curso.docente?.persona?.apellidos + ' ' + curso.docente?.persona?.nombre }}</td>
                                    <td v-if="!curso.docente"> - - </td>
                                    <td>@{{ curso.grupo?.nombre }}</td>
                                    <td>

                                        <ul>

                                            <li v-for="horario in curso.horario_agrupado">
                                                <b> @{{ horario.dias }}:</b> <br> @{{ horario.hora }}
                                            </li>
                                        </ul>
                                    </td>
                                    <td class="text-center">
                                        <div class="btn-group">
                                            <a :href="'/cursos/' + curso.id + '/horarios'" class="btn btn-outline-success btn-sm" title="Horarios" target="_blank">
                                                <i class="fa fa-calendar" aria-hidden="true"></i> Horarios
                                            </a>
                                            <a :href="'/cursos/' + curso.id + '/reportes/estudiantes'" class="btn btn-outline-primary btn-sm" title="Estudiantes">
                                                <i class="fa fa-list" aria-hidden="true"></i> Estudiantes
                                            </a>
                                            <button class="btn btn-primary btn-sm mr-3" @click="editar(curso)" title="Editar">
                                                <i class="fas fa-fw fa-pen" aria-hidden="true"></i>
                                            </button>
                                        </div>
                                        <button class="btn btn-danger btn-sm deleteButton" title="Eliminar" @click="eliminar(curso)">
                                            <i class="fas fa-fw fa-trash" aria-hidden="true"></i>
                                        </button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="modalRegistrar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Datos</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="{{ route('cursos.store') }}" method="POST">
                            @csrf
                            <div class="row">
                                <x-ui.usako-input name="codigo" label="Código"></x-ui.usako-input>
                                <x-ui.usako-input type="select" name="id_docente" label="Docente" :options="$docentes"></x-ui.usako-input>
                                <x-ui.usako-input type="select" name="id_rubro_turno" label="Rubro-Turno" required :options="$rubros_turnos"></x-ui.usako-input>

                                <x-ui.usako-input type="select_object" v-model="programa" option-object="programas" name="programa" @change="resetear(true)">
                                </x-ui.usako-input>
                                <x-ui.usako-input type="select_object" v-model="modulo" option-object="programa.modulos" name="modulo" @change="resetear(false)">
                                </x-ui.usako-input>
                                <x-ui.usako-input type="select_object_id" v-model="unidad_didactica_id" option-object="modulo.unidades_didacticas"
                                                  name="id_unidad_didactica" label="Unidad didáctica" required></x-ui.usako-input>

                                <x-ui.usako-input type="number" name="cupo_maximo" label="Cupo máximo" required></x-ui.usako-input>
                                <x-ui.usako-input type="select" name="id_periodo" required :options="$periodos" label="Periodo" v-model="periodo_id"></x-ui.usako-input>
                                <x-ui.usako-input type="select" name="id_grupo" required :options="$grupos" label="Grupo" v-model="curso.id_grupo">
                                </x-ui.usako-input>
                                <x-ui.usako-input type="date" name="inicio" required label="Fecha de inicio" v-model="inicio"></x-ui.usako-input>
                                <x-ui.usako-input type="date" name="fin" required label="Fecha de fin" v-model="fin"></x-ui.usako-input>
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
        <div class="modal fade" id="modalEditar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar datos</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form :action="'/cursos/' + curso.id" method="POST">
                            @csrf
                            @method('put')
                            <div class="row">
                                <x-ui.usako-input v-model="curso.codigo" name="codigo" label="Código"></x-ui.usako-input>
                                <x-ui.usako-input type="select" v-model="curso.id_docente" name="id_docente" label="Docente" :options="$docentes"></x-ui.usako-input>
                                <x-ui.usako-input type="select" v-model="curso.id_rubro_turno" name="id_rubro_turno" label="Rubro-Turno" required :options="$rubros_turnos"></x-ui.usako-input>

                                <x-ui.usako-input type="select_object" v-model="programa" option-object="programas" name="programa" @change="resetear(true)">
                                </x-ui.usako-input>
                                <x-ui.usako-input type="select_object" v-model="modulo" option-object="programa.modulos" name="modulo" @change="resetear(false)">
                                </x-ui.usako-input>
                                <x-ui.usako-input type="select_object_id" v-model="curso.id_unidad_didactica" option-object="modulo.unidades_didacticas"
                                                  name="id_unidad_didactica" label="Unidad didáctica" required></x-ui.usako-input>

                                <x-ui.usako-input type="number" v-model="curso.cupo_maximo" name="cupo_maximo" label="Cupo máximo" required></x-ui.usako-input>
                                <x-ui.usako-input type="select" name="id_periodo" required :options="$periodos" label="Periodo" v-model="curso.id_periodo">
                                </x-ui.usako-input>
                                <x-ui.usako-input type="select" name="id_grupo" required :options="$grupos" label="Grupo" v-model="curso.id_grupo">
                                </x-ui.usako-input>
                                <x-ui.usako-input type="date" v-model="curso.inicio" name="inicio" required label="Fecha de inicio"></x-ui.usako-input>
                                <x-ui.usako-input type="date" v-model="curso.fin" name="fin" required label="Fecha de fin"></x-ui.usako-input>
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
    </div>

@endsection

@section('js')

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        new Vue({
            el: "#app",
            data: {
                cursos: [],
                programas: [],
                programa: {
                    modulos: []
                },
                filtro: '',
                modulo: {
                    unidades_didacticas: []
                },
                unidad_didactica_id: '',
                inicio: '',
                fin: '',
                periodo_id: '',
                curso: {
                    id: '',
                    codigo: '',
                    cupo_maximo: '',
                    id_docente: '',
                    id: '',
                    id_unidad_didactica: '',
                    id_unidad_didactica: '',
                    id_periodo: '',
                    id_rubro_turno: '',
                    inicio: '',
                    fin: '',
                    programa: {
                        modulos: []
                    },
                    modulo: {
                        unidades_didacticas: []
                    },
                },
                periodos: @js($periodos)
            },
            created: function() {
                this.cursos = @js($cursos);
                this.programas = @js($programas);
            },
            methods: {
                resetear: function(modulo) {
                    if (modulo) {
                        /*this.modulo = {
                            unidades_didacticas: []
                        };*/
                    }
                    this.unidad_didactica_id = '';
                },
                editar(curso) {
                    this.curso = curso;
                    this.programa = this.encuentraPrograma(this.curso.unidad_didactica.modulo_academico.id_programa_academico);
                    this.modulo = this.encuentraModulo(this.curso.unidad_didactica.id_modulo_academico);

                    this.unidad_didactica_id = this.curso.id_unidad_didactica;
                    // this.programa = this.encuentraUnidad(this.curso.unidad_didactica.modulo_academico.id_programa_academico);
                    $("#modalEditar").modal('show');
                },
                eliminar: function(curso) {
                    if (curso.matricula_unidades_count > 0) {
                        console.log(curso.matricula_unidades_count > 0);
                        Swal.fire({
                            title: "Error",
                            text: 'No puede eliminar una unidad aperturada que ya tiene matriculas',
                            icon: "error"
                        });
                        return;
                    }
                    let self = this;
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
                            self.$http.delete('/cursos/' + curso.id).then(function() {
                                location.reload();
                            }).catch(function() {
                                location.reload();
                            });
                        }
                    });
                },
                encuentraPeriodo() {
                    const periodo = this.periodos.find(element => element.id == this.periodo_id);
                    this.inicio = periodo.fecha_inicio;
                    this.fin = periodo.fecha_fin;
                },
                encuentraPrograma(programa_id) {
                    return this.programas.find(element => element.id == programa_id);
                },
                encuentraModulo(modulo_id) {
                    return this.programa.modulos.find(element => element.id == modulo_id);
                }
            },
            computed: {
                codigo() {
                    return this.periodo_id + 'UD';
                },
                unidadesFiltradas() {
                    let self = this;
                    let cursos = this.cursos.filter(function(c) {
                        let nombre = c.unidad_didactica.nombre.toUpperCase();
                        let codigo = c.codigo.toUpperCase();
                        let docente1 = c.docente?.persona?.apellidos.toUpperCase();
                        let docente2 = c.docente?.persona?.nombre.toUpperCase();

                        return nombre.search(self.filtro.toUpperCase()) >= 0 || codigo.search(self.filtro.toUpperCase()) >= 0 ||
                            docente1.search(self.filtro.toUpperCase()) >= 0 || docente2.search(self.filtro.toUpperCase()) >= 0;
                    });

                    return cursos;
                }
            },
            watch: {
                periodo_id() {
                    this.encuentraPeriodo();
                }
            }
        })
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

    @if (session('status'))
        <script>
            Swal.fire({
                title: "{{ session('type')=='success'?'Correcto':'Error' }}",
                text: "{{ session('status') }}",
                icon: "{{ session('type') }}"
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
@endsection
