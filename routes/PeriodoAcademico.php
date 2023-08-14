<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PeriodoAcademicoController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('periodo-academico', [App\Http\Controllers\PeriodoAcademicoController::class, 'index'])
    ->name('periodo-academico.index');
    Route::get('periodo-academico/create', [App\Http\Controllers\PeriodoAcademicoController::class, 'create'])
    ->name('periodo-academico.create');
    Route::get('periodo-academico/{id}', [App\Http\Controllers\PeriodoAcademicoController::class, 'show'])
    ->name('periodo-academico.show');
    Route::post('periodo-academico', [App\Http\Controllers\PeriodoAcademicoController::class, 'store'])
    ->name('periodo-academico.store');
    Route::get('periodo-academico/{id}/edit', [App\Http\Controllers\PeriodoAcademicoController::class, 'edit'])
    ->name('periodo-academico.edit');
    Route::put('periodo-academico/{id}', [App\Http\Controllers\PeriodoAcademicoController::class, 'update'])
    ->name('periodo-academico.update');
    Route::delete('periodo-academico/{id}', [App\Http\Controllers\PeriodoAcademicoController::class, 'destroy'])
    ->name('periodo-academico.destroy');
    // Route::get('periodo-academico/-{id}', [App\Http\Controllers\PeriodoAcademicoController::class, 'delete'])
    // ->name('periodo-academico.delete');
});