<form id="form_pago">
    <div class="d-flex justify-content-between mb-4">
        <div>
            <button type="button" class="btn btn-primary" v-if="ver_lista" @click="ver_lista = !ver_lista"> <i class="fa fa-arrow-left"></i> </button>
        </div>
        <div>
            <button type="button" class="btn btn-primary" v-if="!ver_lista" @click="ver_lista = !ver_lista">Ver pagos</button>
        </div>
    </div>
    <template v-if="!ver_lista">
        <div class="row">
            <x-ui.usako-input md="8" sm="8" xxl="8" name="id_periodo" type="select2" options="periodosLista" label="Periodo" v-model="id_periodo">
            </x-ui.usako-input>
            <div class="col-12 col-sm-4">
                <div class="form-group">
                    <div class="custom-control custom-switch">
                        <br>
                        <input type="checkbox" class="custom-control-input" id="customSwitch1" v-model="activos">
                        <label class="custom-control-label" for="customSwitch1">Solo activos</label>
                    </div>
                </div>
            </div>
            <x-ui.usako-input md="12" sm="12" xxl="12" name="id_producto" type="select2" options="productos" label="Concepto" v-model="id_producto">
            </x-ui.usako-input>
        </div>
        <hr>
        <div class="row">
            <div class="col-12 table-responsive">

                <table class="table table-striped table-hover table-sm" v-if="pagos.length > 0">
                    <thead class="bg-gradient-info">
                        <tr>
                            <th>-</th>
                            <th>Periodo</th>
                            <th>Concepto</th>
                            <th>V. Unidad</th>
                            <th>Cantidad</th>
                            <th>Descuento</th>
                            <th>Descontado</th>
                            <th>Impuesto</th>
                            <th>Pagado</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="(pago, index) in pagos">
                            <td>
                                <button type="button" class="btn btn-sm btn-outline-danger border-0" @click="pagos.splice(index, 1)">
                                    <i class="fa fa-remove"></i>
                                </button>
                            </td>
                            <td>@{{ pago.datos.periodo.nombre }}</td>
                            <td>@{{ pago.datos.producto.nombre }}</td>
                            <td>S/@{{ pago.datos.producto.monto }}</td>
                            <td>
                                <input type="number" class="form-control" v-model.number="pago.cantidad" required @change="recalcularDescuento(index)">
                            </td>
                            <td>
                                <select v-model="pago.id_descuento" class="form-select" @change="recalcularDescuento(index)">
                                    <option value="">Sin descuento</option>
                                    <option v-for="descuento in descuentos" :value="descuento.id">@{{ descuento.nombre }}</option>
                                </select>
                            </td>
                            <td>@{{ pago.datos.descuento }} </td>
                            <td>S/ 0.00</td>
                            <td>S/ 0.00</td>
                            <td>
                                <input type="number" step="0.01" class="form-control" v-model="pago.monto" required>
                            </td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th colspan="9" class="text-right">Total</th>
                            <th>S/ @{{totales}}</th>
                        </tr>
                    </tfoot>
                </table>
                <div class="alert alert-info" v-else>
                    Seleccione un producto para comenzar
                </div>
            </div>
        </div>
        <hr v-if="pagos.length > 0">
        <div class="row" v-if="pagos.length > 0">

            <x-ui.usako-input required md="4" name="id_tipo" type="select" :options="$recibo_tipos" label="Tipo de documento: " v-model="recibo.id_tipo">
            </x-ui.usako-input>
            <x-ui.usako-input required md="4" name="id_serie" type="select" :options="$recibo_series" label="Serie del comprobante: " v-model="recibo.id_serie">
            </x-ui.usako-input>
            <x-ui.usako-input disabled md="4" name="correlativo" label="Correlativo: " v-model="otros_datos.correlativo" class="text-right"> </x-ui.usako-input>
            <x-ui.usako-input disabled md="4" name="otros_fecha" label="Fecha de emisión: " v-model="otros_datos.fecha" class="text-right"> </x-ui.usako-input>
            <x-ui.usako-input disabled md="4" name="otros_hora" label="Hora de emisión: " v-model="otros_datos.hora" class="text-right"> </x-ui.usako-input>
            <x-ui.usako-input required md="4" name="id_cuenta" type="select" :options="$cuentas" label="Tipo de pago: " v-model="recibo.id_cuenta">
            </x-ui.usako-input>

            <x-ui.usako-input md="6" sm="6" xxl="6" name="obervaciones" type="textarea" label="Observaciones" v-model="recibo.obervaciones">
            </x-ui.usako-input>
            <x-ui.usako-input disabled md="3" name="nombre" label="Tipo de documento: " :value="$estudiante->persona?->tipo_identificacion?->nombre"> </x-ui.usako-input>
            <x-ui.usako-input disabled md="3" name="nombre" label="N° de documento: " :value="$estudiante->persona?->numiden"> </x-ui.usako-input>
            <x-ui.usako-input readonly md="6" sm="6" xxl="6" name="nombre" label="Nombres / Razón Social: " v-model="recibo.nombre">
            </x-ui.usako-input>
        </div>
        <div class="row" v-if="pagos.length > 0">

            <div class="col-12 d-flex justify-content-center align-items-center align-content-center">
                <button type="button" @click="registrarPago" class="btn btn-primary">Registrar pago</button>
            </div>
        </div>
    </template>
</form>

<div class="row" v-if="ver_lista">
    <div class="col-12">
        <h4>Pagos realizados</h4>
    </div>
    <div class="col-12 table-responsive">
        <table class="table table-striped table-hover table-sm">
            <thead class="bg-gradient-info">
                <tr>
                    <th>N°</th>
                    <th>Fecha</th>
                    <th>Detalle</th>
                    <th>Observaciones</th>
                    <th>Estado</th>
                    <th>Valor</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($estudiante->recibos as $recibo)
                    <tr>
                        <td class="text-nowrap">{{ $recibo->serie->codigo }}-{{ $recibo->numero }}</td>
                        <td>{{ $recibo->created_at->format('d/m/Y H:i a') }}</td>
                        <td>
                            <table class="table table-sm table-bordered">
                                <tbody>
                                    @foreach ($recibo->pagos as $pago)
                                        <tr>
                                            <td>{{ $pago->periodo->nombre }}</td>
                                            <td>{{ $pago->producto->nombre }}</td>
                                            <td>S/{{ $pago->monto }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </td>
                        <td>{{ $recibo->observaciones }}</td>
                        <td>
                            @if ($recibo->fue_anulado)
                                <div class="badge badge-danger">Anulado</div>
                            @else
                            @endif
                        </td>
                        <td>S/{{ $recibo->pagos->sum('monto') }}</td>
                        <td>
                            <div class="btn-group">
                                <a href="{{ route('estudiantes.pagos.show', $recibo->id) }}" class="btn btn-sm btn-primary">
                                    <i class="fa fa-print"></i>
                                </a>
                                @unless ($recibo->fue_anulado)
                                    <button class="btn btn-sm btn-danger" type="submit" @click="eliminar('{{ $recibo->id }}')">
                                        <i class="fa fa-remove"></i>
                                    </button>
                                @endunless
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
