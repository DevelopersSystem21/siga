<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TipoCalificacionController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('tipo-calificacion', [App\Http\Controllers\TipoCalificacionController::class, 'index'])
    ->name('tipo-calificacion.index');
    Route::post('tipo-calificacion', [App\Http\Controllers\TipoCalificacionController::class, 'store'])
    ->name('tipo-calificacion.store');
    Route::get('tipo-calificacion/{id}/edit', [App\Http\Controllers\TipoCalificacionController::class, 'edit'])
    ->name('tipo-calificacion.edit');
    Route::put('tipo-calificacion/{id}', [App\Http\Controllers\TipoCalificacionController::class, 'update'])
    ->name('tipo-calificacion.update');
    Route::delete('tipo-calificacion/{id}', [App\Http\Controllers\TipoCalificacionController::class, 'destroy'])
    ->name('tipo-calificacion.destroy');
});