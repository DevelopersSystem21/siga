<hr>
<div class="row">
    <div class="col-xs-3 text-right">
        <img src="{{public_path()}}/images/logo.png" alt="" style="MAX-width:300px">
    </div>
    <div class="col-xs-9 text-center">
        <div class="row">
            <div class="col-xs-12">
                <h3><b>CENTRO DE IDIOMAS DE LA CASA DE GUÍAS</b></h3>
            </div>
            <div class="col-xs-12">
                <h4>{{$title}}</h4>
            </div>
        </div>
    </div>
</div>
<hr>
<div class="row">
    <div class="col-xs-4 text-center">Código: 01</div>
    <div class="col-xs-4 text-center">Versión: 0.1</div>
    <div class="col-xs-4 text-center" style="font-size: 11px">Fecha de impresión: {{ \Carbon\Carbon::now()->format('d/m/Y h:i a') }}</div>
</div>
<hr>
