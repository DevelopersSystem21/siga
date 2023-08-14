@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')

@section('content_header')
    <h1 class="m-0 text-dark">Registro de evaluaciones <br> <small>{{ $curso->unidad_didactica->nombre }}</small></h1>
@endsection

@section('content')
    <div class="row" id="app">
        <div class="col-12">
            <usako-notas curso_id="{{$curso->id}}"></usako-notas>
        </div>
    </div>
@endsection
@section('js')

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="{{ mix('js/app/cursos/notas/edit.js') }}"></script>
@endsection
