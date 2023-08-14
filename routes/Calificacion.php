<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CalificacionController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('calificacion', [App\Http\Controllers\CalificacionController::class, 'index'])
    ->name('calificacion.index');
    Route::post('calificacion', [App\Http\Controllers\CalificacionController::class, 'store'])
    ->name('calificacion.store');
    Route::put('calificacion/{id}', [App\Http\Controllers\CalificacionController::class, 'update'])
    ->name('calificacion.update');
    Route::delete('calificacion/{id}', [App\Http\Controllers\CalificacionController::class, 'destroy'])
    ->name('calificacion.destroy');
});