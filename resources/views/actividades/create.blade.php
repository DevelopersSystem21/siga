@extends('adminlte::page')

@section('title', 'AdminLTE')

@section('content_header')
    <h1 class="m-0 text-dark">Crear Actividad</h1>
@stop

@section('content')
    <div class="row">
        <div class="col-12">
            <form action="{{route('actividades.store')}}" method="POST">
                @csrf
                <label>Nombre</label><br>
                <input type="text" name="nombre" id="nombre" class="form-control" autocomplete="off"><br>
                <input type="submit" value="Save" class="btn btn-success"><br>
            </form>
        </div>
    </div>
@stop

{{-- @section('content')
    <div class="row">
        <div class="col-12">
            <form action="{{route('actividades.store')}}" method="POST">
                @csrf
                <label for="nombre">
                    Nombre:
                    <input type="text" name="nombre" autocomplete="off">
                </label><br>
                <input type="submit" value="Enviar">
            </form>
        </div>
    </div>
@stop --}}