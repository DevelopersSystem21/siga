<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HorarioController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('horario', [App\Http\Controllers\HorarioController::class, 'index'])
    ->name('horario.index');
    Route::post('horario', [App\Http\Controllers\HorarioController::class, 'store'])
    ->name('horario.store');
    Route::get('horario/{id}', [App\Http\Controllers\HorarioController::class, 'show'])
    ->name('horario.show');
    Route::put('horario/{id}', [App\Http\Controllers\HorarioController::class, 'update'])
    ->name('horario.update');
    Route::delete('horario/{id}', [App\Http\Controllers\HorarioController::class, 'destroy'])
    ->name('horario.destroy');
});