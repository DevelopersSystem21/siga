<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AsistenciaController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('asistencia', [App\Http\Controllers\AsistenciaController::class, 'index'])
    ->name('asistencia.index');
    Route::post('asistencia', [App\Http\Controllers\AsistenciaController::class, 'store'])
    ->name('asistencia.store');
    Route::put('asistencia/{id}', [App\Http\Controllers\AsistenciaController::class, 'update'])
    ->name('asistencia.update');
    Route::delete('asistencia/{id}', [App\Http\Controllers\AsistenciaController::class, 'destroy'])
    ->name('asistencia.destroy');
});