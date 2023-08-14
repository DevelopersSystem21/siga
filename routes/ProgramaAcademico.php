<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProgramaAcademicoController;

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

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('ProgramaAcademico', [App\Http\Controllers\ProgramaAcademicoController::class, 'index'])
        ->name('ProgramaAcademico.index');

    Route::get('ProgramaAcademico/create', [App\Http\Controllers\ProgramaAcademicoController::class, 'create'])
    ->name('ProgramaAcademico.create');
    Route::get('ProgramaAcademico/{id}', [App\Http\Controllers\ProgramaAcademicoController::class, 'show'])
    ->name('ProgramaAcademico.show');
    Route::post('ProgramaAcademico', [App\Http\Controllers\ProgramaAcademicoController::class, 'store'])
    ->name('ProgramaAcademico.store');
    Route::get('ProgramaAcademico/{id}/edit', [App\Http\Controllers\ProgramaAcademicoController::class, 'edit'])
    ->name('ProgramaAcademico.edit');
    Route::put('ProgramaAcademico/{id}', [App\Http\Controllers\ProgramaAcademicoController::class, 'update'])
    ->name('ProgramaAcademico.update');
    Route::delete('ProgramaAcademico/{id}', [App\Http\Controllers\ProgramaAcademicoController::class, 'destroy'])
    ->name('ProgramaAcademico.destroy');
    
});