import UsakoNotas from "./notas";
import UsakoAsistencia from "../asistencia/asistencia";

new Vue({
    el: "#app",
    data: {
        filtros: {
            id_rubro_turno: "",
            id_programa: "",
            id_periodo: "",
            id_unidad: "",
            id_curso: "",
        },
        programas: [],
        rubros: [],
        unidades: [],
        cursos: [],
    },
    created() {
        this.obtenerDatos();
    },
    methods: {
        obtenerDatos() {
            this.$http.get("/cursos/notas/programas").then(function (response) {
                this.programas = response.data.programas;
                this.rubros = response.data.rubros_turnos;

                this.filtros.id_programa = response.data.id_programa;
                this.filtros.id_rubro_turno = response.data.id_rubro_turno;
            });
        },
        obtenerUnidades() {
            this.$http.get("/cursos/notas/" + this.filtros.id_programa + "/unidades").then(function (response) {
                this.unidades = response.data.unidades;
                this.filtros.id_unidad = response.data.id_unidad;
            });
        },
        obtenerCursos() {
            this.$http
                .get("/cursos/notas/" + this.filtros.id_unidad + "/cursos", {
                    params: this.filtros,
                })
                .then(function (response) {
                    this.cursos = response.data.cursos;
                    this.filtros.id_curso = response.data.id_curso;
                });
        },
    },
    components: {
        UsakoNotas,
        UsakoAsistencia,
    },
    watch: {
        "filtros.id_programa": function () {
            this.obtenerUnidades();
        },
        "filtros.id_unidad": function () {
            this.obtenerCursos();
        },
    },
});
