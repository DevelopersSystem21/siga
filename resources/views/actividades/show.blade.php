@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')

@section('content_header')
    <h1 class="m-0 text-dark">Actividad: {{$actividad->nombre}}</h1>
@stop

@section('content')
    <div class="row">
        <div class="col-12">
            <a href="{{route('actividades.index')}}" class="btn btn-success btn-sm">Regresar</a><br>
            <h2>Bienvenido a la actividad {{$actividad->nombre}}</h2>
        </div>
    </div>
@stop