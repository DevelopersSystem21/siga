<form id="form_credito">
    <div class="d-flex justify-content-between mb-4">
        <div>
            <button type="button" class="btn btn-primary" v-if="ver_lista" @click="ver_lista = !ver_lista"> <i class="fa fa-arrow-left"></i> </button>
        </div>
        <div>
            <button class="btn btn-primary" v-if="!ver_lista" @click="ver_lista = !ver_lista">Ver créditos</button>
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
                        <input type="checkbox" class="custom-control-input" id="customSwitch2" v-model="activos">
                        <label class="custom-control-label" for="customSwitch2">Solo activos</label>
                    </div>
                </div>
            </div>
            <x-ui.usako-input md="12" sm="12" xxl="12" name="id_producto" type="select2" options="productos" label="Concepto" v-model="id_producto">
            </x-ui.usako-input>
        </div>
        <hr>
        <div class="row">
            <div class="col-12">

                <table class="table table-hover" v-if="pagos.length > 0">
                    <thead class="bg-gradient-info">
                        <tr>
                            <th>-</th>
                            <th>Periodo</th>
                            <th>Concepto</th>
                            <th>V. Unidad</th>
                            <th>Cant</th>
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
                </table>
                <div class="alert alert-info" v-else>
                    Seleccione un producto para comenzar
                </div>
                <hr v-if="pagos.length > 0">
                <div class="row" v-if="pagos.length > 0">
                    <div class="col-12">
                        <h4>Configuración del crédito</h4>
                    </div>
                    <x-ui.usako-input md="6" required sm="6" xxl="6" name="fecha" type="date" v-model="credito.fecha"> </x-ui.usako-input>
                    <x-ui.usako-input md="6" required sm="6" xxl="6" name="id_periodo" type="select2" options="periodos" label="Periodo" v-model="credito.id_periodo">
                    </x-ui.usako-input>
                    <x-ui.usako-input md="6" sm="6" xxl="6" name="Valor" type="number" step="0.01" v-model.number="monto_a_pagar" disabled> </x-ui.usako-input>
                    <x-ui.usako-input md="6" sm="6" xxl="6" required name="Pago anticipado" type="number" step="0.01" ::max="totales" ::min="0"
                                      v-model.number="credito.pago_anticipado"> </x-ui.usako-input>

                    <x-ui.usako-input md="6" sm="6" xxl="6" required name="fecha_primera_cuota" label="Fecha primera cuota" type="date" v-model="credito.fecha_primera_cuota">
                    </x-ui.usako-input>
                    <div class="col-12 col-sm-6">
                        <label>Periodicidad cuotas</label>
                        <select class="form-select" v-model="credito.dias_periodicidad" required>
                            <option :value="7">Semanal</option>
                            <option :value="15">Quincenal</option>
                            <option :value="31">Mensual</option>
                        </select>
                    </div>
                    <x-ui.usako-input md="6" sm="6" xxl="6" name="Número de cuotas" type="number" v-model.number="numero_cuotas"> </x-ui.usako-input>
                    <x-ui.usako-input md="6" sm="6" xxl="6" name="Días gracia" type="number" v-model.number="credito.dias_gracia"> </x-ui.usako-input>
                    <x-ui.usako-input md="6" sm="6" xxl="6" name="Interés mora" type="number" step="0.01" v-model.number="credito.interes_mora"> </x-ui.usako-input>
                    <x-ui.usako-input md="6" sm="6" xxl="6" name="Penalización mora" type="number" step="0.01" v-model.number="credito.penalizacion_mora">
                    </x-ui.usako-input>

                    <x-ui.usako-input md="6" sm="6" xxl="6" name="Crédito a nombre de" v-model="credito.nombre"> </x-ui.usako-input>
                    <x-ui.usako-input md="6" sm="6" xxl="6" name="observaciones" type="textarea" label="Observaciones" v-model="credito.observaciones"></x-ui.usako-input>
                    <div class="col-12 d-flex justify-content-center align-items-center align-content-center">
                        <button type="button" @click="registrarPago" class="btn btn-primary">Registrar crédito</button>
                    </div>
                </div>
                <div class="row mt-3" v-if="pagos.length > 0 && credito.cuotas.length > 0">
                    <div class="col-12">
                        <table class="table table-hover">
                            <thead class="bg-gradient-info">
                                <tr>
                                    <th>N°</th>
                                    <th>Fecha</th>
                                    <th>Capital</th>
                                    <th>Cuota</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="cuota in credito.cuotas">
                                    <td> @{{ cuota.numero }} </td>
                                    <td> <input type="date" class="form-control" v-model="cuota.fecha"></td>
                                    <td> S/@{{ cuota.capital }} </td>
                                    <td> S/@{{ cuota.monto }} </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </template>
</form>


<div class="row" v-if="ver_lista">
    <div class="col-12">
        <h4>Créditos registrados</h4>
    </div>
    <div class="col-12 table-responsive">
        <table class="table table-hover">
            <thead class="bg-gradient-info">
                <tr>
                    <th>Fecha</th>
                    <th>Fecha primera cuota</th>
                    <th>Cuotas</th>
                    <th>Estado</th>
                    <th>Periodo</th>
                    <th>Valor</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($estudiante->creditos as $credito)
                    <tr>
                        <td>{{ $credito->fecha->format('d/m/Y') }}</td>
                        <td>{{ $credito->fecha_primera_cuota->format('d/m/Y') }}</td>
                        <td>
                            <table class="table table-sm table-bordered">
                                <tbody>
                                    @foreach ($credito->cuotas as $cuota)
                                        <tr>
                                            <td>{{ $cuota->numero }}</td>
                                            <td>{{ $cuota->fecha->format('d/m/Y') }}</td>
                                            <td>S/{{ $cuota->monto }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </td>
                        <td>{{ $credito->periodo->nombre }}</td>
                        <td>
                            @if ($credito->fue_anulado)
                                <span class="badge bg-danger">Anulado</span>
                            @elseif ($credito->fue_pagado)
                                <span class="badge bg-success">Pagado</span>
                            @endif
                        </td>
                        <td>S/{{ $credito->pagos->sum('monto') }}</td>
                        <td>
                            <div class="btn-group">
                                <a href="{{ route('estudiantes.creditos.show', $credito->id) }}" class="btn btn-sm btn-primary">
                                    <i class="fa fa-print"></i>
                                </a>
                                @unless ($credito->fue_anulado || $credito->fue_pagado)
                                    <button class="btn btn-sm btn-success" type="submit" @click="marcar('{{ $credito->id }}')">
                                        <i class="fa fa-check"></i>
                                    </button>
                                    <button class="btn btn-sm btn-danger" type="submit" @click="eliminar('{{ $credito->id }}')">
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
