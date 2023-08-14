<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ActividadController;
use App\Http\Controllers\Curso\AsistenciaController;
use App\Http\Controllers\Curso\NotaController;
use App\Http\Controllers\Curso\HorarioController;
use App\Http\Controllers\Curso\ReportesController as CursoReportesController;
use App\Http\Controllers\CursoController;
use App\Http\Controllers\EstudianteController;
use App\Http\Controllers\Estudiantes\PagoController;
use App\Http\Controllers\Estudiantes\CreditoController;
use App\Http\Controllers\Estudiantes\ReportesController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\MatriculaController;
use App\Http\Controllers\MatriculaUnidadController;
use App\Http\Controllers\PeriodoAcademicoController;
use Illuminate\Support\Facades\Auth;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    if (Auth::check()) {
        return redirect()->route('home');
    } else {
        return redirect()->route('login');
    }
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
    Route::get('reglamento-interno', [App\Http\Controllers\ReglamentoController::class, 'index'])->name('reglamento-interno.index');
    Route::get('personal', [App\Http\Controllers\PersonalController::class, 'index'])->name('personal.index');
});


Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

require_once __DIR__ . '/Actividades.php';
require_once __DIR__ . '/pais.php';
require_once __DIR__ . '/Departamento.php';
require_once __DIR__ . '/Ciudad.php';
require_once __DIR__ . '/programacionMatricula.php';
require_once __DIR__ . '/ProgramaAcademico.php';
require_once __DIR__ . '/Estudiantes.php';
require_once __DIR__ . '/Docentes.php';
require_once __DIR__ . '/TipoModulo.php';
require_once __DIR__ . '/Configuracion.php';
require_once __DIR__ . '/Ciclos.php';
require_once __DIR__ . '/Aulas.php';
require_once __DIR__ . '/Turnos.php';
require_once __DIR__ . '/Servicios.php';
require_once __DIR__ . '/ModuloAcademico.php';
require_once __DIR__ . '/TipoIdentificacion.php';
require_once __DIR__ . '/UnidadDidactica.php';
require_once __DIR__ . '/PeriodoAcademico.php';
require_once __DIR__ . '/ModuloAperturado.php';
require_once __DIR__ . '/UnidadAperturada.php';
require_once __DIR__ . '/Doctxunidapertu.php';
require_once __DIR__ . '/DetRegistroAuxiliar.php';
require_once __DIR__ . '/TipoCalificacion.php';
require_once __DIR__ . '/CapacidadLogro.php';
require_once __DIR__ . '/ActaNota.php';
require_once __DIR__ . '/Asistencia.php';
require_once __DIR__ . '/Indicador.php';
require_once __DIR__ . '/Calificacion.php';
require_once __DIR__ . '/Matricula.php';
require_once __DIR__ . '/Grupo.php';
require_once __DIR__ . '/Horario.php';
require_once __DIR__ . '/Producto.php';
require_once __DIR__ . '/ProductoPrograma.php';
require_once __DIR__ . '/ProductoPrograma.php';
require_once __DIR__ . '/Apoderados.php';

/** Nuevas rutas */


Route::middleware(['web', 'auth'])->group(function () {
    /** Matrícula **/
    Route::post('matricular/{matricula}', [MatriculaUnidadController::class, 'store'])->name('matricula_unidad.store');
    Route::delete('matricular/{matriculaUnidad}', [MatriculaUnidadController::class, 'destroy'])->name('matricula_unidad.destroy');

    /** Estudiantes **/

    Route::get('estudiantes/{estudiante}/reportes/ficha_inscripcion', [ReportesController::class, 'ficha_inscripcion'])->name('estudiantes.reportes.ficha_inscripcion');
    Route::get('estudiantes/{estudiante}/reportes/ficha_matricula', [ReportesController::class, 'ficha_matricula'])->name('estudiantes.reportes.ficha_matricula');

    Route::get('estudiantesI', [EstudianteController::class, 'indexW'])->name('estudiantes.matriculas.indexW');
    Route::get('estudiantes/{estudiante}/academica', [EstudianteController::class, 'showAcademico'])->name('estudiantes.showAcademico');
    Route::get('estudiantes/{estudiante}/financiera', [EstudianteController::class, 'showFinanciero'])->name('estudiantes.showFinanciero');

    Route::post('estudiantes/{estudiante}/foto', [EstudianteController::class, 'subirFoto'])->name('estudiantes.matriculas.store');
    Route::post('estudiantes/{estudiante}/matriculas', [MatriculaController::class, 'matricularEstudiante'])->name('estudiantes.matriculas.store');
    Route::post('estudiantes/{estudiante}/pagos', [PagoController::class, 'store'])->name('estudiantes.pagos.store');

    Route::get('pagos/correlativo/{serie}/{tipo}', [PagoController::class, 'obtenerCorrelativo'])->name('estudiantes.pagos.correlativo');
    Route::get('pagos/{recibo}', [PagoController::class, 'show'])->name('estudiantes.pagos.show');
    Route::delete('pagos/{recibo}', [PagoController::class, 'destroy'])->name('estudiantes.pagos.destroy');
    Route::post('estudiantes/{estudiante}/creditos', [CreditoController::class, 'store'])->name('estudiantes.creditos.store');
    Route::get('creditos/{credito}', [CreditoController::class, 'show'])->name('estudiantes.creditos.show');
    Route::patch('creditos/{credito}', [CreditoController::class, 'update'])->name('estudiantes.creditos.update');
    Route::delete('creditos/{credito}', [CreditoController::class, 'destroy'])->name('estudiantes.creditos.destroy');

    /** Cursos (Unidades abiertas) */
    Route::get('cursos/{curso}/reportes/estudiantes', [CursoReportesController::class, 'estudiantes'])->name('cursos.reportes.estudiantes');

    Route::get('cursos/notas', [NotaController::class, 'index']);
    Route::get('cursos/notas/programas', [NotaController::class, 'programas']);
    Route::get('cursos/notas/{programa}/unidades', [NotaController::class, 'unidades']);
    Route::get('cursos/notas/{unidad}/cursos', [NotaController::class, 'cursos']);
    Route::get('cursos/{curso}/notas', [NotaController::class, 'datos'])->name('cursos.notas.datos');
    Route::post('cursos/{estudiante}/notas/convalidacion', [NotaController::class, 'convalidacion'])->name('cursos.notas.convalidacion');
    Route::post('cursos/{curso}/notas', [NotaController::class, 'store'])->name('cursos.notas.store');
    Route::get('cursos/{curso}/notas/crear', [NotaController::class, 'create'])->name('cursos.notas.create');

    Route::get('cursos/asistencia', [AsistenciaController::class, 'index']);
    Route::get('cursos/{curso}/asistencia', [AsistenciaController::class, 'datos'])->name('cursos.asistencia.datos');
    Route::post('cursos/{curso}/asistencia', [AsistenciaController::class, 'store'])->name('cursos.asistencia.store');
    Route::get('cursos/{curso}/asistencia/crear', [AsistenciaController::class, 'create'])->name('cursos.asistencia.create');

    Route::get('cursos/{curso}/horarios', [HorarioController::class, 'index']);
    Route::post('cursos/{curso}/horarios', [HorarioController::class, 'store'])->name('cursos.horarios.store');
    Route::delete('/horarios/{horario}', [HorarioController::class, 'destroy'])->name('cursos.horarios.destroy');
    Route::resource('cursos', CursoController::class);

    /** Perfil de usuario */
    Route::get('admin/perfil', [HomeController::class, 'perfil']);
    Route::post('admin/perfil', [HomeController::class, 'updatePerfil']);
    Route::post('admin/perfil/password', [HomeController::class, 'updatePassword']);
});

Route::get('pagos/verificar/{uuid}', [PagoController::class, 'verificar'])->name('estudiantes.pagos.verificar');
Route::get('credito/verificar/{uuid}', [CreditoController::class, 'verificar'])->name('estudiantes.creditos.verificar');
