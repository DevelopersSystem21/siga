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
                <a href="/cursos/notas" class="btn btn-outline-primary" v-if="retornable"><i class="fa fa-arrow-left mr-2"></i>Lista de unidades</a>
                <button class="btn btn-primary" @click="guardar" :disabled="loading"><i class="fa fa-save mr-2"></i>Guardar</button>
            </div>
        </div>
        <div class="card-body p-0 border-0 table-responsive" v-if="curso.matricula_unidades.length > 0">
            <table class="table table-sm table-bordered">
                <thead>
                    <tr>
                        <th class="text-center" rowspan="2">Código</th>
                        <th rowspan="2">Alumno</th>
                        <th class="text-center" :colspan="capacidad.indicadores.length + 1" v-for="capacidad in curso.capacidades">
                            {{ capacidad.nombre }} <br />
                            ({{ capacidad.porcentaje }}%)
                        </th>

                        <th class="text-center" rowspan="2">Promedio</th>
                    </tr>
                    <tr>
                        <template v-for="capacidad in curso.capacidades">
                            <th
                                style="min-width: 50px !important"
                                class="text-center"
                                v-for="indicador in capacidad.indicadores"
                                data-bs-toggle="tooltip"
                                data-bs-placement="top"
                                :title="indicador.nombre"
                            >
                                {{ indicador.codigo }}
                            </th>
                            <th class="text-right" data-bs-toggle="tooltip" data-bs-placement="top" title="Promedio">Prom.</th>
                        </template>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="mu in curso.matricula_unidades">
                        <td class="text-center">{{ mu.matricula?.codigo }}</td>
                        <td class="text-nowrap">{{ mu.matricula?.estudiante?.persona?.nombre_completo }}</td>
                        <template v-for="capacidad in curso.capacidades">
                            <td class="text-center pr-0" v-for="indicador in capacidad.indicadores">
                                <input
                                    type="number"
                                    step="0.01"
                                    @click="mensajear(mu)"
                                    class="form-control"
                                    :class="{
                                        'border-danger': notas[mu.id + '-' + indicador.id].valor < 0 || notas[mu.id + '-' + indicador.id].valor > 20,
                                        'border-0': notas[mu.id + '-' + indicador.id].valor >= 0 && notas[mu.id + '-' + indicador.id].valor <= 20,
                                    }"
                                    v-model.lazy.number="notas[mu.id + '-' + indicador.id].valor"
                                    :disabled="loading"
                                    :readonly="mu.esta_inhabilitado"
                                />
                            </td>

                            <th class="text-right">
                                {{ calcularPromedio(capacidad, mu.id) }}
                            </th>
                        </template>

                        <th class="text-center" v-if="mu.esta_inhabilitado">
                            <div class="badge bg-danger">Inhabilitado (30%)</div>
                        </th>
                        <th class="text-right" v-else>
                            {{ calcularPromedioFinal(mu.id) }}
                        </th>
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
            curso: {
                id: 0,
                capacidades: [],
                matricula_unidades: [],
            },
            notas: {},
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
                .get("/cursos/" + this.curso_id + "/notas")
                .then(({ data }) => {
                    this.curso = data.curso;
                    this.notas = data.notas;
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
        guardar() {
            for (let i in this.notas) {
                let n = this.notas[i];
                if (n.valor < 0 || n.valor > 20) {
                    alert("Revise los valores ingresados");
                    return;
                }
            }

            let self = this;
            self.loading = true;
            Swal.fire({
                title: "¿Estás seguro que desea guardar estas notas?",
                icon: "question",
                showCancelButton: true,
                confirmButtonText: "Sí, guardar",
                cancelButtonText: "Cancelar",
            }).then(function (result) {
                if (result.isConfirmed) {
                    self.$http.post("/cursos/" + self.curso.id + "/notas", self.notas).then(({ data }) => {
                        self.loading = false;
                        self.obtenerDatos();
                        Swal.fire({
                            title: "Completado",
                            text: "Notas guardadas",
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
        mensajear(mu) {

            if (mu.esta_inhabilitado) {
                Swal.fire({
                    title: "Alerta",
                    text: "El alumno está inhabilitado por la acumulación del 30% de inasistencias, conforme al reglamento interno de la institución",
                    icon: "warning",
                });
            }
        },
        calcularPromedio: function (capacidad, matricula_id) {
            let sum = 0;
            let peso = 0;
            for (let i in capacidad.indicadores) {
                let f = this.notas[matricula_id + "-" + capacidad.indicadores[i].id];
                sum = sum + parseFloat(f.valor || 0);
                peso = peso + 1;
            }
            capacidad.valor = sum / peso;
            return capacidad.valor.toFixed(0);
        },
        calcularPromedioFinal: function (matricula_id) {
            let sum = 0;
            let peso = 0;
            for (let i in this.curso.capacidades) {
                let capacidad = this.curso.capacidades[i];
                let valor = 0;
                valor = this.calcularPromedio(capacidad, matricula_id);

                sum = sum + valor * parseFloat(capacidad.peso);
                peso = peso + parseFloat(capacidad.peso);
            }
            let total = sum / peso;

            return total.toFixed(0);
        },
    },
    watch: {
        curso_id() {
            this.obtenerDatos();
        },
    },
};
</script>
