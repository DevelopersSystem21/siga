<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ConfiguracionUnidadController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('configuracion-unidad', [App\Http\Controllers\ConfiguracionUnidadController::class, 'index'])
    ->name('configuracion-unidad.index');
    Route::get('configuracion-unidad/create', [App\Http\Controllers\ConfiguracionUnidadController::class, 'create'])
    ->name('configuracion-unidad.create');
    Route::post('configuracion-unidad', [App\Http\Controllers\ConfiguracionUnidadController::class, 'store'])
    ->name('configuracion-unidad.store');
    Route::get('configuracion-unidad/{id}/edit', [App\Http\Controllers\ConfiguracionUnidadController::class, 'edit'])
    ->name('configuracion-unidad.edit');
    Route::put('configuracion-unidad/{id}', [App\Http\Controllers\ConfiguracionUnidadController::class, 'update'])
    ->name('configuracion-unidad.update');
    Route::delete('configuracion-unidad/{id}', [App\Http\Controllers\ConfiguracionUnidadController::class, 'destroy'])
    ->name('configuracion-unidad.destroy');
    
});