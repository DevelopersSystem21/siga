@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')

@section('content_header')
    {{-- <h1 class="m-0 text-dark">Calendario</h1> --}}
@stop

@section('content')
    <div class="row pt-3">
            <div class="row d-flex justify-content-start align-items-center pr-3">
                <div class="col-12 d-flex justify-content-between mr-3">
                     <p>Horario de: <b>{{$unidades_aperturadas->unidad_didacticas->nombre}}</b></p>     
                    <a href="{{route('unidades-aperturadas.index')}}">
                    <button class="btn btn-sm shadow mr-1 border hover-btn-dark" title="Ir a Unidades Didacticas">
                        <i class="fa fa-circle-left mr-2 fa-lg text-primary" aria-hidden="true"></i>Unidades Aperturadas
                      </button>
                    </a>
            </div>
        </div>
    </div>
    <div class="row">
      <div class="col-3">
        <p>Docente<br>
        <b>Maria Gomez</b></p>
        <form action="">
          <label for="aula" class="form-label">Aula</label>
          <select class="form-select" name="aula">
              <option selected>Selecione Aula</option>
              <option value="T-101">T-001</option>
              <option value="T-002">T-002</option>
              <option value="T-003">T-003</option>
          </select>
        </form>
      </div>
      <div class="col-9">
        <div id='calendar'></div>
      </div>
    </div>
    
@stop
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js"></script>
<script>

    document.addEventListener('DOMContentLoaded', function() {
      const calendarEl = document.getElementById('calendar');
      const calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'timeGridWeek',
        slotMinTime: '08:00'
      });
      calendar.render();
    });

  </script>