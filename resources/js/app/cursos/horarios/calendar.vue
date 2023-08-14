<script>
import FullCalendar from "@fullcalendar/vue";
import dayGridPlugin from "@fullcalendar/daygrid";
import timeGridPlugin from "@fullcalendar/timegrid";
import interactionPlugin from "@fullcalendar/interaction";
import bootstrapPlugin from "@fullcalendar/bootstrap";

export default {
    props: {
        events: {
            type: Array,
        },
    },
    components: {
        FullCalendar, // make the <FullCalendar> tag available
    },
    data() {
        return {
            calendarOptions: {
                plugins: [dayGridPlugin, timeGridPlugin, interactionPlugin, bootstrapPlugin],
               // timeZone: "local",
                themeSystem: "bootstrap",
                initialView: "timeGridWeek",
                locale: "es",
                selectable: true,
                firstDay: 1,
                headerToolbar: {
                    left: "",
                    center: "",
                    right: "", // user can switch between the two
                },
                dayHeaderFormat: {
                    weekday: "long",
                },
                slotLabelFormat: {
                    hour: "2-digit",
                    minute: "2-digit",
                    meridiem: "short",
                    hour12: true,
                },
                allDaySlot: false,
                eventOverlap: false,
                selectOverlap: false,
                selectMirror: true,
                events: this.events,
                select: function (info) {
                    const weekday = ["Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"];

                    let inicio = new Date(Date.parse(info.startStr));
                    $("#inicio").val(inicio.toLocaleTimeString('es-PE'));

                    let fin = new Date(Date.parse(info.endStr));
                    $("#fin").val(fin.toLocaleTimeString('es-PE'));

                    let day = weekday[inicio.getDay()];
                    $("#dia").val(day);
                    $("#dia_id").val(inicio.getDay());

                    for (let i = 1; i <= 7; i++) {
                        $("#switchDia" + i).prop("checked", false);
                    }
                    $("#switchDia" + inicio.getDay()).prop("checked", true);

                    $("#modalRegistrar").modal("show");
                },
            },
        };
    },
};
</script>
<template>
    <FullCalendar :options="calendarOptions" />
</template>
