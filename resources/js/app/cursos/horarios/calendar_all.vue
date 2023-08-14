<script>

import 'bootstrap/dist/css/bootstrap.css';
import '@fortawesome/fontawesome-free/css/all.css';


import FullCalendar from "@fullcalendar/vue";
import dayGridPlugin from "@fullcalendar/daygrid";
import timeGridPlugin from "@fullcalendar/timegrid";
import listPlugin from "@fullcalendar/list";
import interactionPlugin from "@fullcalendar/interaction";
import multiMonthPlugin from "@fullcalendar/multimonth";
import bootstrapPlugin from '@fullcalendar/bootstrap';
import esLocale from '@fullcalendar/core/locales/es';

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
                plugins: [dayGridPlugin, timeGridPlugin, interactionPlugin, listPlugin, bootstrapPlugin, multiMonthPlugin],
                themeSystem: 'bootstrap',
                initialView: "dayGridMonth",
                locale: esLocale,
                selectable: false,
                firstDay: 1,
                dayHeaderFormat: {
                    weekday: "long",
                },
                headerToolbar: {
                    left: "prev,next today",
                    center: "title",
                    right: "multiMonthYear,dayGridMonth,timeGridWeek,list",
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
                    console.log(info);
                    const weekday = ["Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"];

                    let inicio = new Date(Date.parse(info.startStr));
                    $("#inicio").val(inicio.toLocaleTimeString());

                    let fin = new Date(Date.parse(info.endStr));
                    $("#fin").val(fin.toLocaleTimeString());

                    let day = weekday[inicio.getUTCDay()];
                    $("#dia").val(day);
                    $("#dia_id").val(inicio.getUTCDay());

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
