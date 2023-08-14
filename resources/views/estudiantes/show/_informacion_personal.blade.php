<h2 class="mt-3">Informacion personal</h2>
<div class="row ">
    <div class="col-6">
        <p><b>Nombres: </b>{{ $estudiante->personas->nombre }}</p>
        <p><b>Identificacion: </b>DNI {{ $estudiante->personas->numiden }}</p>
        <p><b>Telefono: </b>{{ $estudiante->personas->telefono }}</p>
        <p><b>Correo electronico: </b>{{ $estudiante->personas->email }}</p>
        <p><b>Ciudad: </b>{{ $estudiante->ciudades->nomciu }}</p>
        <p><b>Pais: </b>Perú</p>
    </div>
    <div class="col-6">
        <p><b>Apellidos: </b>{{ $estudiante->personas->apellidos }}</p>
        <p><b>Sexo: </b>{{ $estudiante->personas->sexo }}</p>
        <p><b>Celular: </b>{{ $estudiante->personas->telefono }}</p>
        <p><b>Direccion: </b>{{ $estudiante->personas->direccion }}</p>
        {{-- <p><b>Departamento: </b>Huaraz</p> --}}
    </div>
</div>
