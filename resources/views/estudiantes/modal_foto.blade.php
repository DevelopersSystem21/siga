<div class="modal fade" id="modalRegistrarFoto" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Registrar fotografía</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-12">
                        <form action="/estudiantes/{{ $estudiante->id }}/foto" class="dropzone" id="my-awesome-dropzone">
                            @csrf

                            <div class="dz-default dz-message">
                                <div class="dz-icon">
                                    <i class="ti-cloud-up" style="font-size: 30px"></i>
                                </div>
                                <div>
                                    <span class="dz-text">Arrastra los archivos para subir</span>

                                    <p class="text-sm text-muted">o haz click para seleccionarlos manualmente</p>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
