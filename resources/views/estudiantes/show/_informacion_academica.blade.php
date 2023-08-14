<h2 class="mt-3"></h2>
<div class="row">
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item border-bottom border-secondary border-4" role="presentation">
            <button class="nav-link active text-secondary" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home"
                    aria-selected="true">Programa de Estudio</button>
        </li>
        <li class="nav-item border-bottom border-secondary border-4" role="presentation">
            <button class="nav-link text-secondary" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile"
                    aria-selected="false">Record Académico</button>
        </li>
        <li class="nav-item border-bottom border-secondary border-4" role="presentation">
            <!--<button class="nav-link text-secondary" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Contacto</button><!-->
        </li>
    </ul>
    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
            <div class="container-fluid mt-4 mb-4 border-top bg-light border-seconday border-4 rounded-bottom pb-3">
                <div class="row d-flex justify-content-center align-items-center">
                    <div class="col-lg-6 d-flex justify-content-left align-items-left mb-4 mt-4">
                        <h4>{{ $estudiante->programa_academico->nombre }}</h4>
                    </div>
                    <div class="col-lg-6 d-flex justify-content-end align-items-end mb-4 mt-4">
                        @if ($estudiante->matricula)
                            <span class="badge bg-primary rounded"><i class="fa fa-check mr-1"></i> Inscrito</span>
                        @else
                        @endif
                    </div>
                </div>
                <div class="row mb-4">
                    <div class="col-lg-8 col-sm-12 d-flex justify-content-start align-items-start">
                        @if ($estudiante->matricula)
                            <button type="button" class="btn btn-secondary  btn-sm" data-bs-toggle="modal" data-bs-target="#modalMatricular">
                                <span class="fs-sm"><i class="fa fa-circle-plus mr-1"></i>Inscribir otro Programa de Estudio</span></button>
                            <form action="{{ route('matricula.destroy', $estudiante->matricula->id) }}" method="POST">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-secondary  btn-sm"><span class="fs-sm"><i class="fa fa-trash mr-1"></i>Eliminar Inscripción</span></button>

                            </form>
                        @else
                            <button type="button" class="btn btn-secondary btn-sm" data-bs-toggle="modal" data-bs-target="#modalMatricular">
                                <span class="fs-sm"><i class="fa fa-circle-plus mr-1"></i>Matricular Programa de Estudio</span>
                            </button>
                        @endif
                    </div>

                    <div class="col-lg-4 col-sm-12 d-flex justify-content-end align-items-end">
                        @if ($estudiante->matricula)
                            <div class="btn-group">
                                <a href="{{ route('estudiantes.reportes.ficha_inscripcion', $estudiante) }}" class="btn btn-outline-secondary btn-sm">
                                    Ficha de Inscripción
                                </a>
                                <a href="{{ route('estudiantes.reportes.ficha_matricula', $estudiante) }}" class="btn btn-outline-secondary btn-sm">
                                    Ficha de matrícula
                                </a>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
            <div class="container mb-4">
                @if (!$estudiante->matricula)
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="row">
                                <div class="col-lg-3 col-md-2 col-sm-2"><b>Código:</b></div>
                                <div class="col-lg-3 col-md-4 col-sm-4">231.1325.15</div>
                                <div class="col-lg-2 col-md-2 col-sm-2"><b>Periodo:</b></div>
                                <div class="col-lg-4 col-md-4 col-sm-4">2023 - II</div>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-lg-3 col-md-2 col-sm-2"><b>Fecha de inscripción:</b></div>
                            <div class="col-lg-4 col-md-4 col-sm-4">29/05/2023</div>
                        </div>
                    </div>
                @else
                    <div class="row">
                        <div class="col-6">
                            <dl class="row">
                                <dt class="col-sm-6 text-end">Código matrícula:</dt>
                                <dd class="col-sm-6">{{ $estudiante->matricula->codigo }}</dd>
                                <dt class="col-sm-6 text-end">Rubro: - Turno</dt>
                                <dd class="col-sm-6">{{ $estudiante->matricula->rubro_turno->rubro->nombre }} - {{ $estudiante->matricula->rubro_turno->turno->nombre }}</dd>
                                <dt class="col-sm-6 text-end">Ciclo:</dt>
                                <dd class="col-sm-6">{{ $estudiante->matricula->ciclo->nombre }}</dd>
                                <dt class="col-sm-6 text-end">Periodo:</dt>
                                <dd class="col-sm-6">{{ $estudiante->matricula->periodo->nombre }}</dd>
                            </dl>
                        </div>
                        <div class="col-6">
                            <dl class="row">
                                <dt class="col-sm-6 text-end">Monto a pagar:</dt>
                                <dd class="col-sm-6">S/. {{-- $estudiante->matricula->monto --}}</dd>
                                <dt class="col-sm-6 text-end">Fecha de matrícula:</dt>
                                <dd class="col-sm-6">{{ $estudiante->matricula->fecha->format('d/m/Y') }}</dd>
                                @if ($estudiante->matricula->observacion)
                                    <dt class="col-sm-6 text-end">Observaciones:</dt>
                                    <dd class="col-sm-6">{{ $estudiante->matricula->observacion }}</dd>
                                @endif
                            </dl>
                        </div>
                    </div>
                    <hr>
                    <div class="row g-3" x-data="{ ver_todo: false, ingresando_notas: false }">
                        <div class="col-12">
                            <div class="row">
                                <div class="col-6">
                                    <button class="btn" :class="{ 'btn-outline-primary': !ver_todo, 'btn-primary': ver_todo }" @click="ver_todo = !ver_todo">
                                        <span x-show="!ver_todo">Ver todas las unidades</span>
                                        <span x-show="ver_todo">Ver matrícula</span>
                                    </button>
                                </div>
                                <div class="col-6 text-right">
                                    <button x-show="ver_todo" class="btn" :class="{ 'btn-outline-primary': !ingresando_notas, 'btn-outline-danger': ingresando_notas }"
                                            @click="ingresando_notas = !ingresando_notas">
                                        <span x-show="!ingresando_notas">Ingresar notas</span>
                                        <span x-show="ingresando_notas">Cancelar ingreso</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 table-responsive" x-show="ver_todo">
                            <style>
                                input::-webkit-outer-spin-button,
                                input::-webkit-inner-spin-button {
                                    -webkit-appearance: none;
                                    margin: 0;
                                }

                                input[type="number"] {
                                    -moz-appearance: textfield;
                                }
                            </style>
                            <form action="{{ route('cursos.notas.convalidacion', $estudiante->id) }}" method="POST">
                                @csrf
                                <table class="table table-hover">
                                    <thead class="bg-gradient-info">
                                        <tr>
                                            <th>#</th>
                                            <th>Nombre</th>
                                            <th class="text-center">Ciclo</th>
                                            <th class="text-center">Horas</th>
                                            <th class="text-center">Créditos</th>
                                            <th class="text-center">Estado</th>
                                            <th x-show="ingresando_notas" width="15%">Nota</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($unidades_all as $unidad)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $unidad->nombre }}</td>
                                                <td class="text-center">{{ $unidad->ciclo->nombre }}</td>
                                                <td class="text-center">{{ $unidad->horas_xsemana }}</td>
                                                <td class="text-center">{{ $unidad->cantidad_creditos }}</td>
                                                <td class="text-center">
                                                    @if ($unidad->matriculado)
                                                        <div class="badge bg-primary">Matriculado</div>
                                                    @else
                                                        @if ($unidad->nota)
                                                            <div class="badge bg-success">
                                                                {{ $unidad->nota }} (Convalidado)
                                                            </div>
                                                        @else
                                                            <div class="badge bg-warning">
                                                                Pendiente
                                                            </div>
                                                        @endif
                                                    @endif
                                                </td>
                                                <td x-show="ingresando_notas">
                                                    @unless ($unidad->matriculado)
                                                        <input type="hidden" name="notas[{{ $loop->index }}][id_estudiante]" value="{{ $estudiante->id }}">
                                                        <input type="hidden" name="notas[{{ $loop->index }}][id_unidad_academica]" value="{{ $unidad->id }}">
                                                        <input type="number" class="form-control" name="notas[{{ $loop->index }}][nota]" value="{{ $unidad->nota }}">
                                                    @endunless
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                <button type="submit" class="btn btn-primary">
                                    <i class="fa fa-save mr-2"></i> Guardar convalidaciones rápidas
                                </button>
                            </form>
                        </div>
                        <table class="table table-striped table-hover table-sm" x-show="!ver_todo">
                            <thead class="bg-gradient-info">
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Docente</th>                                    
                                    <th scope="col">Horario</th>
                                    <th scope="col">Grupo</th>
                                    <th scope="col">Estado</th>
                                    <th scope="col">Acciones</th>
                                </tr>
                            </thead>
                            @foreach ($cursos->where('matriculable', true) as $curso)
                                <tbody x-data="{ curso: @js($curso), expandido: false }">
                                    <tr>
                                        <th scope="row">{{ $loop->iteration }}</th>
                                        
                                        <td>{{ $curso->unidad_didactica->nombre }}</td>
                                        <td>{{ $curso->docente?->persona?->nombre_completo }}</td>
                                        <td> <span>
                                            @foreach ($curso->horario_agrupado as $horario)
                                                <b>{{ $horario['dias'] }}:</b> {{ $horario['hora'] }} /
                                            @endforeach
                                            </span>
                                        </td>
                                        <td>{{ $curso->grupo->nombre }}</td>
                                        <td>
                                            @if (!$curso->matriculado)
                                                <div class="bg-danger rounded text-center">Pendiente</div>
                                            @else
                                                <div class="bg-success rounded text-center font-italic">En curso...</div>
                                            @endif
                                        </td>

                                        <td>
                                            @if (!$curso->matriculado)
                                                <form action="{{ route('matricula_unidad.store', $estudiante->matricula->id) }}" method="POST">
                                                    @csrf
                                                    <div class="btn-group">
                                                        <button type="submit" class="btn btn-primary">Matricular</button>
                                                        <input type="hidden" name="id_unidad_aperturada" value="{{ $curso->id }}">
                                                        <button type="button" class="btn"
                                                                :class="{ 'btn-primary': expandido, ' btn-outline-primary': !expandido }"
                                                                x-on:click="expandido = !expandido">
                                                            <i class="fa fa-list"></i>
                                                        </button>
                                                    </div>
                                                </form>
                                            @else
                                                <form action="{{ route('matricula_unidad.destroy', $curso->matricula->id) }}" method="POST">
                                                    @csrf
                                                    @method('delete')
                                                    <div class="btn-group">
                                                        <button type="submit" class="btn btn-outline-danger">Eliminar</button>
                                                        <input type="hidden" name="id_unidad_aperturada" value="{{ $curso->id }}">
                                                        <button type="button" class="btn"
                                                                :class="{ 'btn-primary': expandido, ' btn-outline-primary': !expandido }"
                                                                x-on:click="expandido = !expandido">
                                                            <i class="fa fa-list"></i>
                                                        </button>
                                                    </div>
                                                </form>
                                            @endif
                                        </td>
                                    </tr>
                                    <tr x-show="expandido">
                                        <td colspan="12">
                                            <table class="table table-bordered table-hover">
                                                <thead class="bg-gradient-info">
                                                    <tr>
                                                        <th>Código</th>
                                                        <th>Curso</th>
                                                        <th>Cupos</th>
                                                        <th>Fecha</th>
                                                        <th>Ciclo</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>{{ $curso->codigo }}</td>
                                                        <td>{{ $curso->unidad_didactica->nombre }}</td>
                                                        <td>{{ $curso->cupo_maximo }}</td>
                                                        <td>
                                                            <b>Desde </b>{{ $curso->inicio->format('d/m/Y') }}
                                                            <br>
                                                            <b>Hasta </b>{{ $curso->fin->format('d/m/Y') }}
                                                        </td>
                                                        
                                                        <td>
                                                            {{ $curso->unidad_didactica->ciclo->nombre }}
                                                        </td>
                                                        
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            @endforeach
                        </table>
                    </div>
                @endif
            </div>
        </div>
        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            <div class="container-fluid mt-4 mb-4 border-top bg-light border-seconday border-4 rounded-bottom pb-3">
                <div class="row pt-4 pb-4">
                    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
                        <label for="" class="control-label">Programa de Estudio</label>
                        <select class="form-select" name="" id="" title="Seleccione">
                            <option value="">Seleccione</option>
                        </select>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
                        <label for="" class="control-label">Periodo</label>
                        <select class="form-select" name="" id="" title="Seleccione">
                            <option value="">Seleccione</option>
                        </select>
                    </div>
                </div>

            </div>
            <div class="container mb-4">
                <div class="row border rounded pt-4 pb-4">
                    <div class="col-lg-12">
                        Aquí se muestran los datos del periodo por Progrma Académico y Periodo
                    </div>
                </div>
            </div>
        </div>
        <!--<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">...</div><!-->
    </div>
</div>

<div class="modal fade" id="modalMatricular" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Matricular Programa de Estudio</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="{{ route('estudiantes.matriculas.store', $estudiante) }}" method="POST">
                    @csrf
                    <div class="row">
                        <x-ui.usako-input name="codigo" required value="{{ $estudiante->persona?->numiden }}" label="Código"></x-ui.usako-input>
                        <x-ui.usako-input name="programa" required value="{{ $estudiante->programa_academico->nombre }}" label="Programa" readonly disabled></x-ui.usako-input>
                        <x-ui.usako-input type="select" name="id_periodo_academicos" required :options="$periodos" label="Periodo" v-model="periodo_id"></x-ui.usako-input>
                        <x-ui.usako-input type="select" name="id_rubro_turno" label="Rubro-Turno" required :options="$rubros_turnos"></x-ui.usako-input>
                        <x-ui.usako-input type="select" name="id_ciclos" label="Ciclo" required :options="$ciclos"></x-ui.usako-input>
                        <x-ui.usako-input type="date" name="fecha" required label="Fecha matrícula" :value="Carbon\Carbon::now()->format('Y-m-d')"></x-ui.usako-input>
                        <x-ui.usako-input type="hidden" step="0.1" name="monto" required label="Monto de pago" value="100.0"></x-ui.usako-input>
                        <x-ui.usako-input type="textarea" name="observacion" label="Observaciones"></x-ui.usako-input>
                    </div>
                    <div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="submit" class="btn btn-primary">Registrar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
