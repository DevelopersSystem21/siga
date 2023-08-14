@extends('layouts.clean')
@section('content')
    <div class="row">
    </div>


    <x-usako-logo title="INFORMACIÓN ESTUDIANTE"></x-usako-logo>
    <div class="row">
        <div class="col-xs-12">
            <h4><b>Información personal</b></h4>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-9">
            <div class="row">
                <div class="col-xs-6">
                    <dl class="row">
                        <x-ui.usako-dl label="Nombres" :value="$estudiante->persona?->nombre"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Identificación" :value="$estudiante->persona?->numiden"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Teléfono" :value="$estudiante->persona?->telefono"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Correo electrónico" :value="$estudiante->persona?->email"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Lugar de residencia" :value="$estudiante->ciudades?->nomciu"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Fecha de nacimiento" :value="$estudiante->persona?->numiden"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Tipo de sangre" value=""></x-ui.usako-dl>
                    </dl>
                </div>
                <div class="col-xs-6">
                    <dl class="row">
                        <x-ui.usako-dl label="Apellidos" :value="$estudiante->persona?->apellidos"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Sexo" :value="ucfirst($estudiante->persona?->sexo)"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Celular" :value="$estudiante->persona?->celular"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Dirección" :value="$estudiante->persona?->direccion"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Barrio" value="-"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Lugar de nacimiento" :value="$estudiante->ciudades?->nomciu"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Fecha de inscripción" :value="$estudiante->programa_academico->updated_at ? $estudiante->programa_academico->updated_at->format('d/m/Y') : '-'"></x-ui.usako-dl>
                        <x-ui.usako-dl label="Programa" :value="$estudiante->programa_academico->nombre"></x-ui.usako-dl>
                    </dl>
                </div>
            </div>
        </div>
        <div class="col-xs-3 text-center">
            @if ($estudiante->foto)
                <img src="{{ public_path() }}/storage/fotos/{{ $estudiante->foto }}" class="profile-user-img" style="width: 200px; max-heigth: 400px">
            @else
                <img src="{{ public_path() }}/vendor/adminlte/dist/img/{{$estudiante->persona->sexo === 'masculino'?'perfil.png':'perfil_f.jpeg'}}" class="profile-user-img" style="width: 200px; max-heigth: 400px">
            @endif
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-xs-12">
            <h4><b>Información Académica</b></h4>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Institución</th>
                        <th>Municipio</th>
                        <th>Nivel académico</th>
                        <th colspan="3">Detalle</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td rowspan="2"></td>
                        <td rowspan="2"></td>
                        <td rowspan="2"></td>
                        <th>Graduado</th>
                        <th>Fecha graduación</th>
                        <th>Título alcanzado</th>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-xs-12">
            <h4><b>Información Familiar</b></h4>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Nombre completo</th>
                        <th>Identificación</th>
                        <th>Teléfono</th>
                        <th>Celular</th>
                        <th>Correo electrónico</th>
                        <th>Parentesco</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-xs-12">
            <h4><b>Información Laboral</b></h4>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Empresa</th>
                        <th>Municipío</th>
                        <th>Cargo</th>
                        <th>Teléfono</th>
                        <th>Dirección</th>
                        <th>Ingreso</th>
                        <th>Terminación</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-xs-12">
            <h4><b>Preguntas Personalizadas</b></h4>
        </div>
    </div>
@endsection
@section('css')
    <style>
        th {
            text-align: center;
            background-color: #ddd;
        }
    </style>
@endsection
