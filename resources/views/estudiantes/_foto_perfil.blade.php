@if ($estudiante->foto)
    <img src="/storage/fotos/{{ $estudiante->foto }}" class="profile-user-img img-fluid {{ !isset($square) || !$square ? 'img-circle' : '' }}" alt="...">
@else
    <img src="/vendor/adminlte/dist/img/{{$estudiante->persona->sexo === 'masculino'?'perfil.png':'perfil_f.jpeg'}}" class="profile-user-img img-fluid {{ !isset($square) || !$square ? 'img-circle' : '' }}" alt="...">
@endif
