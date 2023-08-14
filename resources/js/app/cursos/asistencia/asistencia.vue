<style>
/* Chrome, Safari, Edge, Opera */
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}

/* Firefox */
input[type="number"] {
    -moz-appearance: textfield;
}
</style>
<template>
    <div class="card border-0">
        <div class="card-body" v-if="curso.matricula_unidades.length > 0">
            <div class="d-flex justify-content-between">
                <!--onclick="confirm('¿Realmente quiere salir?')"-->
                <a href="/cursos/notas" v-if="retornable" class="btn btn-outline-primary"><i class="fa fa-arrow-left mr-2"></i>Lista de unidades</a>
                <button class="btn btn-primary" @click="verificar" :disabled="loading"><i class="fa fa-save mr-2"></i>Guardar</button>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="form-group">
                        <div class="custom-control custom-switch">
                            <br />
                            <input type="checkbox" class="custom-control-input" id="customSwitch2" v-model="extendido" />
                            <label class="custom-control-label" for="customSwitch2">Todas las opciones</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body p-0 border-0 table-responsive" v-if="curso.matricula_unidades.length > 0">
            <table class="table table-sm table-bordered">
                <thead>
                    <tr>
                        <th class="text-center" rowspan="2">Código</th>
                        <th rowspan="2">Alumno</th>
                        <th class="text-center" :colspan="horario_semanal.horarios.length" v-for="horario_semanal in horarios_semanales">
                            Semana {{ horario_semanal.semana }} <br />
                            {{ horario_semanal.inicio }} - {{ horario_semanal.fin }}
                        </th>
                        <th rowspan="2">%</th>
                    </tr>
                    <tr>
                        <template v-for="horario_semanal in horarios_semanales">
                            <td class="text-center text-nowrap" v-for="horario in horario_semanal.horarios">
                                <b>
                                    {{ horario.dia }} <br />
                                    {{ horario.fecha_formateada }} <br />
                                </b>
                                <small> {{ horario.inicio }} - {{ horario.fin }}</small>
                            </td>
                        </template>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="mu in curso.matricula_unidades">
                        <td class="text-center">{{ mu.matricula?.codigo }}</td>
                        <td class="text-nowrap">{{ mu.matricula?.estudiante?.persona?.nombre_completo }}</td>
                        <template v-for="horario_semanal in horarios_semanales">
                            <td class="text-center text-nowrap" v-for="horario in horario_semanal.horarios">
                                <div class="btn-group" v-if="!asistencias[mu.id + '-' + horario.codigo].es_tardanza && !asistencias[mu.id + '-' + horario.codigo].es_permiso">
                                    <button
                                        :disabled="mu.esta_inhabilitado"
                                        class="btn btn-primary"
                                        v-if="asistencias[mu.id + '-' + horario.codigo].asistio"
                                        @click="registrarAsistencia(mu.id + '-' + horario.codigo)"
                                    >
                                        A
                                    </button>
                                    <button
                                        :disabled="mu.esta_inhabilitado"
                                        class="btn btn-outline-danger"
                                        v-if="!asistencias[mu.id + '-' + horario.codigo].asistio"
                                        @click="registrarAsistencia(mu.id + '-' + horario.codigo)"
                                    >
                                        F
                                    </button>
                                    <button
                                        v-if="extendido"
                                        :disabled="mu.esta_inhabilitado"
                                        type="button"
                                        class="btn dropdown-toggle dropdown-icon px-1"
                                        :class="{
                                            'btn-outline-danger': !asistencias[mu.id + '-' + horario.codigo].asistio,
                                            'btn-primary': asistencias[mu.id + '-' + horario.codigo].asistio,
                                        }"
                                        data-toggle="dropdown"
                                    >
                                        <span class="sr-only">Toggle</span>
                                    </button>
                                    <div class="dropdown-menu" role="menu" :disabled="mu.esta_inhabilitado">
                                        <a class="dropdown-item" href="#" @click="registrarTardanza(mu.id + '-' + horario.codigo)">Tardanza</a>
                                        <a class="dropdown-item" href="#" @click="registrarPermiso(mu.id + '-' + horario.codigo)">Permiso</a>
                                    </div>
                                </div>
                                <button
                                    class="btn btn-warning"
                                    :disabled="mu.esta_inhabilitado"
                                    v-if="asistencias[mu.id + '-' + horario.codigo].es_tardanza"
                                    @click="resetearAsistencia(mu.id + '-' + horario.codigo)"
                                >
                                    T
                                </button>
                                <button
                                    class="btn btn-success"
                                    :disabled="mu.esta_inhabilitado"
                                    v-if="asistencias[mu.id + '-' + horario.codigo].es_permiso"
                                    @click="resetearAsistencia(mu.id + '-' + horario.codigo)"
                                >
                                    P
                                </button>
                            </td>
                        </template>
                        <td :class="{ 'text-danger': mu.esta_inhabilitado }">{{ formatea(calcularPromedioFinal(mu.id)) }}%</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="card-body" v-else>
            <div class="alert alert-danger">No hay alumnos matriculados</div>
        </div>
    </div>
</template>
<script>
export default {
    props: {
        curso_id: "",
        retornable: {
            type: Boolean,
            default: false,
        },
    },
    data() {
        return {
            loading: false,
            extendido: false,
            curso: {
                id: 0,
                capacidades: [],
                matricula_unidades: [],
            },
            asistencias: {},
            horarios_semanales: {},
        };
    },
    mounted() {
        this.obtenerDatos();
        this.$nextTick(() => {
            window.onbeforeunload = function () {
                //   return true;
            };
        });
    },
    methods: {
        obtenerDatos() {
            this.loading = true;
            this.$http
                .get("/cursos/" + this.curso_id + "/asistencia")
                .then(({ data }) => {
                    this.curso = data.curso;
                    this.asistencias = data.asistencias;
                    this.horarios_semanales = data.horarios_semanales;
                    this.loading = false;
                    this.$nextTick(() => {
                        let tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
                        let tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
                            return new bootstrap.Tooltip(tooltipTriggerEl);
                        });
                    });
                })
                .catch((response) => {
                    Swal.fire({
                        title: "Error",
                        text: response.data.message || "No se pudo cargar",
                        icon: "error",
                    });
                    this.loading = false;
                });
        },
        registrarAsistencia(val) {
            this.asistencias[val].asistio = !this.asistencias[val].asistio;
        },
        resetearAsistencia(val) {
            this.asistencias[val].asistio = true;
            this.asistencias[val].es_tardanza = false;
            this.asistencias[val].es_permiso = false;
        },
        registrarTardanza(val) {
            this.asistencias[val].asistio = false;
            this.asistencias[val].es_tardanza = true;
            this.asistencias[val].es_permiso = false;
        },
        registrarPermiso(val) {
            this.asistencias[val].asistio = false;
            this.asistencias[val].es_tardanza = false;
            this.asistencias[val].es_permiso = true;
        },
        verificar() {
            let self = this;
            if (this.existe_alguno_a_inhabilitarse) {
                Swal.fire({
                    text: "Guardar esta asistencia inhabilitará a uno o más alumnos. Seleccione continuar si estos datos son correctos y desea guardar de todas maneras.",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonText: "Sí, continuar",
                    cancelButtonText: "Cancelar",
                }).then(function (result) {
                    if (result.isConfirmed) {
                        self.guardar();
                    }
                    self.loading = false;
                });
            } else {
                self.guardar();
            }
        },
        guardar() {
            let self = this;
            self.loading = true;
            Swal.fire({
                title: "¿Estás seguro que desea guardar estas asistencias?",
                icon: "question",
                showCancelButton: true,
                confirmButtonText: "Sí, guardar",
                cancelButtonText: "Cancelar",
            }).then(function (result) {
                if (result.isConfirmed) {
                    self.$http
                        .post("/cursos/" + self.curso.id + "/asistencia", {
                            asistencias: self.asistencias,
                            matriculas: self.procesarAsistencias(),
                        })
                        .then(({ data }) => {
                            self.loading = false;
                            self.obtenerDatos();
                            Swal.fire({
                                title: "Completado",
                                text: "Asistencias guardadas",
                                icon: "success",
                            }).catch(function (response) {
                                self.loading = false;
                                Swal.fire({
                                    title: "Error",
                                    text: response.data.message || "No se pudo guardar",
                                    icon: "error",
                                });
                            });
                        });
                }

                self.loading = false;
            });
        },

        calcularPromedioFinal: function (matricula_id) {
            let inasistencias = 0;
            let total = 0;
            for (let i in this.horarios_semanales) {
                let hs = this.horarios_semanales[i];
                for (let j in hs.horarios) {
                    let h = hs.horarios[j];
                    let asis = this.asistencias[matricula_id + "-" + h.codigo];
                    inasistencias = inasistencias + (!asis.asistio && !asis.es_tardanza && !asis.es_permiso ? 1 : 0);
                    total++;
                }
            }

            return (100 * inasistencias) / total;
        },
        formatea(val) {
            return val.toFixed(2);
        },
        procesarAsistencias() {
            let matriculas = this.curso.matricula_unidades;
            for (let i in matriculas) {
                let matricula = matriculas[i];
                matricula.esta_inhabilitado = false;

                if (this.calcularPromedioFinal(matricula.id) >= 30) {
                    matricula.esta_inhabilitado = true;
                }
            }

            return matriculas;
        },
    },
    computed: {
        existe_alguno_a_inhabilitarse() {
            let existe = false;

            for (let i in this.curso.matricula_unidades) {
                let matricula = this.curso.matricula_unidades[i];

                if (this.calcularPromedioFinal(matricula.id) >= 30) {
                    existe = true;
                }
            }

            return existe;
        },
    },
    watch: {
        curso_id() {
            this.obtenerDatos();
        },
    },
};
</script>
