@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')

@section('content_header')
    <h1 class="m-0 text-dark">Perfil de usuario</h1>
    <h3>{{ $usuario->name }}</h3>
@stop

@section('content')
    <hr>
    <div class="row mt-5" id="app">
        <div class="col-12 col-sm-2 offset-sm-2 text-end">
            <h4>Datos del perfil</h4>
        </div>
        <div class="col-12 col-sm-4">
            <form class="card" action="/admin/perfil" method="POST">
                @csrf
                <div class="card-body">
                    <div class="row">
                        <x-ui.usako-input sm="12" md="12" xxl="12" name="name" label="Nombre" required value="{{ $usuario->name }}"></x-ui.usako-input>
                        <x-ui.usako-input sm="12" md="12" xxl="12" name="email" required value="{{ $usuario->email }}"></x-ui.usako-input>
                        <x-ui.usako-input sm="12" md="12" xxl="12" name="nombre_completo" required value="{{ $usuario->nombre_completo }}"></x-ui.usako-input>
                    </div>
                </div>
                <div class="card-footer text-end">
                    <button type="submit" class="btn btn-primary">Guardar cambios</button>
                </div>
            </form>
        </div>
    </div>
    <div class="row mt-5" id="app2">
        <div class="col-12 col-sm-2 offset-sm-2 text-end">
            <h4>Cambio de contraseña</h4>
        </div>
        <div class="col-12 col-sm-4">
            <form class="card" action="/admin/perfil/password" method="POST">
                @csrf
                <div class="card-body">
                    <div class="row">
                        <x-ui.usako-input type="password" sm="12" md="12" xxl="12" required name="password"></x-ui.usako-input>
                        <x-ui.usako-input type="password" sm="12" md="12" xxl="12" label="Repetir password" required name="password_confirmation"></x-ui.usako-input>
                    </div>
                </div>
                <div class="card-footer text-end">
                    <button type="submit" class="btn btn-primary">Guardar cambios</button>
                </div>
            </form>
        </div>
    </div>
    @if (session('status'))
        <div class="row d-flex justify-content-center ">
            <div class="col-6">
                <div class="alert alert-success h6">
                    {{ session('status') }}
                </div>
            </div>
        </div>
    @endif
    <div class="row">
        <div class="col-12 col-sm-6 offset-sm-3">
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
        </div>
    </div>
@endsection
