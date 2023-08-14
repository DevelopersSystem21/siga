import UsakoCalendar from "./calendar";
import UsakoCalendarAll from "./calendar_all";

new Vue({
    el: "#app",
    data: {
        ambiente_id: "",
        tipo: "general",
        dias: [],
    },
    components: {
        UsakoCalendar,
        UsakoCalendarAll,
    },
    methods: {
        cambiarTipo(tipo) {
            this.tipo = tipo;
        },
    },
});
