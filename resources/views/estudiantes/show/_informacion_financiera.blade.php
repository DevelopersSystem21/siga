<div class="row">
    <div class="col-12">
        <div class="card card-primary  card-outline card-outline-tabs">
            <div class="card-header p-0 border-bottom-0">
                <ul class="nav nav-tabs" id="custom-tabs-four-tab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="informacion_financiera_pagos-tab" data-toggle="pill" href="#informacion_financiera_pagos" role="tab" aria-controls="informacion_financiera_pagos"
                           aria-selected="false">Pagos</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" id="informacion_financiera_creditos-tab" data-toggle="pill" href="#informacion_financiera_creditos" role="tab"
                           aria-controls="informacion_financiera_creditos"
                           aria-selected="true">Créditos</a>
                    </li>
                </ul>
            </div>
            <div class="card-body">
                <div class="tab-content" id="custom-tabs-four-tabContent">
                    <div class="tab-pane fade show active" id="informacion_financiera_pagos" role="tabpanel" aria-labelledby="informacion_financiera_pagos-tab">
                        @include('estudiantes.show._informacion_financiera_pagos')
                    </div>
                    <div class="tab-pane fade" id="informacion_financiera_creditos" role="tabpanel" aria-labelledby="informacion_financiera_creditos-tab">
                        @include('estudiantes.show._informacion_financiera_creditos')
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>
