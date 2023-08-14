@extends('layouts.bootstrap')

@section('title', 'SIGA CEAM')
@section('content_header')
    {{-- <h1 class="m-0 text-dark">Estudiante: {{$estudiante->codigo}}</h1> --}}
@stop

@section('content')
    <div class="row pt-3">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="row g-2">
                        <div class="col-12 col-md-2 col-sm-4 d-flex justify-content-center align-content-center align-items-center ">
                            <div class="w-60">
                                @include('estudiantes._foto_perfil', ['square' => true])
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-sm-8">
                            <h2 class="pt-3 mb-0 text-dark">
                                {{ $estudiante->personas->nombre }} <small class="text-nowrap"> {{ $estudiante->personas->apellidos }}</small></h2>
                            <h5 class="mb-0">DNI: {{ $estudiante->personas->numiden }} </h5>
                            <div class="h4">
                                <button class="btn btn-light px-2 btn-sm" data-bs-toggle="modal" data-bs-target="#modalRegistrarFoto">
                                    <i class="fa fa-camera"></i>
                                </button>
                                <small class="text-muted">{{ $estudiante->programa_academicos->nombre }}</small>
                            </div>
                        </div>
                        <div class="col-12 col-md-4 col-sm-12 d-flex justify-content-end align-items-end">
                            <div class="btn-group">
                                <a href="{{ route('estudiantes.index') }}" class="btn btn-light" title="Ir al listado de estudiantes">
                                    <i class="fa fa-list fs-5" aria-hidden="true"></i>
                                </a>
                                <button class="btn btn-primary">
                                    <a class="text-light text-decoration-none" href="{{ route('estudiantes.create') }}"><i class="fa fa-plus mr-2 fs-5 text-light" aria-hidden="true"></i>Registrar estudiante
                                    </a>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @include('estudiantes.modal_foto')
        </div>
    </div>

    <div class="row-fluid bg-white rounded border">
        <nav>
            <div class="nav nav-tabs bg-secondary  rounded-top" id="nav-tab" role="tablist">
                <a href="{{ route('estudiantes.show', $estudiante) }}" class="nav-link active btn-primary text-white" id="nav-home-tab" data-bs-target="#nav-home" aria-controls="nav-home"
                   aria-selected="true">Informacion Personal</a>
                <a href="{{ route('estudiantes.showAcademico', $estudiante) }}" class="nav-link  btn-primary text-white"
                   id="nav-profile-tab" data-bs-target="#nav-profile" aria-controls="nav-profile"
                   aria-selected="false">Informacion Academica</a>
                <a href="{{ route('estudiantes.showFinanciero', $estudiante) }}" class="nav-link  btn-primary text-white" id="informacion_financiera-tab" data-bs-target="#informacion_financiera"
                   aria-controls="informacion_financiera"
                   aria-selected="false">Informacion Financiera</a>
                <!--button class="btn btn-secondary dropdown-toggle mr-1" type="button" id="  1" data-bs-toggle="dropdown" aria-expanded="false">Más...</!--button>
                                    <ul-- class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                        <li><a class="dropdown-item" href="#">Acción</a></li>
                                        <li><a class="dropdown-item" href="#">Otra acción</a></li>
                                        <li><a class="dropdown-item" href="#">Algo más aqui</a></li>
                                    </ul-->
            </div>
        </nav>
        <div class="container p-3">
            <div class="tab-content bg-white" id="nav-tabContent">
                <div class="tab-pane fade  show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0">
                    @include('estudiantes.show._informacion_personal')
                </div>
                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" tabindex="0">
                    @include('estudiantes.show._informacion_academica')
                </div>
                <div class="tab-pane fade" id="informacion_financiera" role="tabpanel" aria-labelledby="informacion_financiera-tab" tabindex="0">

                    @include('estudiantes.show._informacion_financiera')

                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="/vendor/dropzone/dropzone.css">
    <script src="/vendor/dropzone/dropzone.js"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.12.1/dist/cdn.min.js"></script>


@stop

@section('js')
    <script>
        new Vue({
            el: "#informacion_financiera_pagos",
            data: {
                ver_lista: false,
                activos: true,
                productos: [],
                id_periodo: '',
                id_producto: '',
                periodos: [],

                descuentos: [],
                pagos: [],

                recibo_series: [],
                recibo_tipos: [],
                recibo: {
                    id_periodo: '',
                    id_serie: '',
                    id_tipo: '',
                    id_cuenta: '',
                    monto_cuenta: 0,
                    observaciones: '',
                    nombre: '{{ $estudiante->persona->nombre_completo }} - {{ $estudiante->persona->numiden }}'
                }
            },
            created() {
                this.productos = @js($productos);
                this.periodos = @js($periodos);
                this.descuentos = @js($descuentos);
                this.cuentas = @js($cuentas);
                this.recibo_series = @js($recibo_series);
                this.recibo_tipos = @js($recibo_tipos);
                this.id_periodo = this.periodos.length > 0 ? this.periodos[0].id : '';
            },
            methods: {
                agregar(val) {
                    let producto = this.encuentra(this.productos, val);
                    let periodo = this.encuentra(this.periodos, this.id_periodo);

                    if (producto === undefined) {
                        return;
                    }
                    this.pagos.push({
                        datos: {
                            periodo: {
                                nombre: periodo.nombre
                            },
                            producto: {
                                nombre: producto.nombre,
                                monto: producto.monto,
                            },
                            descuento: 0
                        },
                        id_producto: this.id_producto,
                        id_periodo: this.id_periodo,
                        cantidad: 1,
                        descuento: 0,
                        monto: 1 * producto.monto
                    });
                },
                recalcular(index) {
                    let pago = this.pagos[index];

                    pago.monto = this.roundToTwo(pago.cantidad * pago.datos.producto.monto);
                    pago.datos.descuento = 0;
                },
                recalcularDescuento(index) {
                    let pago = this.pagos[index];
                    let descuento = this.encuentra(this.descuentos, pago.id_descuento);

                    if (pago.cantidad <= 0) {
                        pago.cantidad = 1;
                    }

                    if (descuento === undefined) {
                        this.recalcular(index);
                        return;
                    }

                    pago.datos.descuento = pago.cantidad * pago.datos.producto.monto * descuento.porcentaje / 100;
                    pago.monto = ((pago.cantidad * pago.datos.producto.monto) - pago.datos.descuento);
                    pago.monto = this.roundToTwo(pago.monto)
                    pago.datos.descuento = this.roundToTwo(pago.datos.descuento)

                },
                encuentra(arr, id) {
                    return arr.find(e => e.id === id);
                },
                roundToTwo(num) {
                    return +(Math.round(num + "e+2") + "e-2");
                },
                registrarPago() {
                    let valid = $('#form_pago').get(0).reportValidity();

                    if (!valid) {
                        return;
                    }

                    this.$http.post('/estudiantes/{{ $estudiante->id }}/pagos', {
                        recibo: this.recibo,
                        pagos: this.pagos
                    }).then(function(response) {
                        location.reload();
                    });
                },

                eliminar: function(recibo_id) {
                    let self = this;
                    Swal.fire({
                        title: '¿Estás seguro que deseas eliminar el registro?',
                        icon: 'error',
                        showCancelButton: true,
                        confirmButtonText: 'Sí, eliminar',
                        cancelButtonText: 'Cancelar',
                        confirmButtonColor: '#d33',
                        cancelButtonColor: '#198754',
                    }).then(function(result) {
                        self.$http.delete('/pagos/' + recibo_id).then(function() {
                            location.reload();
                        });
                    });
                }
            },
            computed: {
                totales() {
                    return {}
                },
                periodosLista() {
                    let self = this;
                    return this.periodos.filter(function(p) {
                        if (self.activos) {
                            return p.activo;
                        }
                        return true;
                    });
                }
            },
            watch: {
                id_producto(val) {
                    this.agregar(val);
                }
            }
        })
    </script>
    <script>
        new Vue({
            el: "#informacion_financiera_creditos",
            data: {
                activos: true,
                ver_lista: false,
                productos: [],
                id_producto: '',
                id_periodo: '',
                periodos: [],

                descuentos: [],

                recibo_series: [],
                recibo_tipos: [],
                credito: {
                    id_periodo: '',
                    fecha: '{{ $fecha_hoy }}',
                    monto: 0,
                    pago_anticipado: 0,
                    fecha_primera_cuota: '{{ $fecha_hoy }}',
                    dias_periodicidad: 31,
                    dias_gracia: 15,
                    interes_mora: 10,
                    penalizacion_mora: 10,
                    nombre: '{{ $estudiante->persona->nombre_completo }} - {{ $estudiante->persona->numiden }}',
                    observaciones: '',
                    cuotas: []
                },
                numero_cuotas: 1,
                pagos: [],
            },
            created() {
                this.productos = @js($productos);
                this.periodos = @js($periodos);
                this.descuentos = @js($descuentos);
                this.cuentas = @js($cuentas);
                this.recibo_series = @js($recibo_series);
                this.recibo_tipos = @js($recibo_tipos);
                this.id_periodo = this.periodos.length > 0 ? this.periodos[0].id : '';
            },
            methods: {
                agregar(val) {
                    let producto = this.encuentra(this.productos, val);
                    let periodo = this.encuentra(this.periodos, this.id_periodo);

                    if (producto === undefined) {
                        return;
                    }
                    this.pagos.push({
                        datos: {
                            periodo: {
                                nombre: periodo.nombre
                            },
                            producto: {
                                nombre: producto.nombre,
                                monto: producto.monto,
                            },
                            descuento: 0
                        },
                        id_producto: this.id_producto,
                        id_periodo: this.id_periodo,
                        cantidad: 1,
                        descuento: 0,
                        monto: 1 * producto.monto
                    });
                },
                recalcular(index) {
                    let pago = this.pagos[index];

                    pago.monto = this.roundToTwo(pago.cantidad * pago.datos.producto.monto);
                    pago.datos.descuento = 0;
                },
                recalcularDescuento(index) {
                    let pago = this.pagos[index];
                    let descuento = this.encuentra(this.descuentos, pago.id_descuento);

                    if (pago.cantidad <= 0) {
                        pago.cantidad = 1;
                    }

                    if (descuento === undefined) {
                        this.recalcular(index);
                        return;
                    }

                    pago.datos.descuento = pago.cantidad * pago.datos.producto.monto * descuento.porcentaje / 100;
                    pago.monto = ((pago.cantidad * pago.datos.producto.monto) - pago.datos.descuento);
                    pago.monto = this.roundToTwo(pago.monto)
                    pago.datos.descuento = this.roundToTwo(pago.datos.descuento)

                },
                encuentra(arr, id) {
                    return arr.find(e => e.id === id);
                },
                roundToTwo(num) {
                    return +(Math.round(num + "e+2") + "e-2");
                },
                registrarPago() {
                    let valid = $('#form_credito').get(0).reportValidity();

                    if (!valid) {
                        return;
                    }

                    this.$http.post('/estudiantes/{{ $estudiante->id }}/creditos', {
                        credito: this.credito,
                        pagos: this.pagos
                    }).then(function(response) {
                        location.reload();
                    });
                },

                eliminar: function(recibo_id) {
                    let self = this;
                    Swal.fire({
                        title: '¿Estás seguro que deseas eliminar el registro?',
                        icon: 'error',
                        showCancelButton: true,
                        confirmButtonText: 'Sí, eliminar',
                        cancelButtonText: 'Cancelar',
                        confirmButtonColor: '#d33',
                        cancelButtonColor: '#198754',
                    }).then(function(result) {
                        self.$http.delete('/pagos/' + recibo_id).then(function() {
                            location.reload();
                        });
                    });
                },
                sumar() {
                    sum = 0;
                    for (let i in this.pagos) {
                        sum = sum + parseFloat(this.pagos[i].monto);
                    }

                    return sum;
                },
                calcularCuotas() {
                    this.credito.cuotas = [];
                    let fecha_inicio = new Date(this.credito.fecha_primera_cuota);
                    let capital = this.monto_a_pagar;
                    let monto = this.monto_a_pagar / this.numero_cuotas

                    for (let i = 1; i <= this.numero_cuotas; i++) {
                        fecha_inicio.setDate(fecha_inicio.getDate() + this.credito.dias_periodicidad);

                        let day = fecha_inicio.getDate();
                        if (day < 10) {
                            day = '0' + day;
                        }
                        let month = fecha_inicio.getMonth();

                        if (month < 10) {
                            month = `0${month}`;
                        }

                        this.credito.cuotas.push({
                            numero: i,
                            fecha: fecha_inicio.getFullYear() + '-' + month + '-' + day,
                            monto: this.roundToTwo(monto),
                            capital: this.roundToTwo(capital)
                        });
                        capital = capital - monto;
                    }

                }
            },
            computed: {
                totales() {
                    return this.sumar();
                },
                monto_a_pagar() {
                    return this.totales - this.credito.pago_anticipado;
                },

                periodosLista() {
                    let self = this;
                    return this.periodos.filter(function(p) {
                        if (self.activos) {
                            return p.activo;
                        }
                        return true;
                    });
                }
            },
            watch: {
                id_producto(val) {
                    this.agregar(val);
                },
                numero_cuotas(val) {
                    this.calcularCuotas(val);
                },
                'credito.fecha_primera_cuota': function(val) {
                    this.calcularCuotas(val);
                },
                'credito.dias_periodicidad': function(val) {
                    this.calcularCuotas(val);
                },
                pagos: {
                    deep: true,
                    handler(val) {
                        this.calcularCuotas(val);
                    }
                },
            }
        })
    </script>
@endsection
