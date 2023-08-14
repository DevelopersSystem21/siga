@extends('adminlte::page')

@section('title', 'AdminLTE')

@section('content_header')
    <h1 class="m-0 text-dark">Editar Actividad</h1>
@stop

@section('content')
    <div class="row">
        <div class="col-12">
            <form action="{{route('actividades.update',$actividad)}}" method="POST">
                @csrf
                @method('put')
                <label>Nombre</label><br>
                <input type="text" name="nombre" id="nombre" class="form-control" autocomplete="off"
                       value="{{$actividad->nombre}}"><br>
                <input type="submit" value="Save" class="btn btn-success"><br>
            </form>
        </div>
    </div>
@stop