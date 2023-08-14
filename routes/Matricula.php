<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MatriculaController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('matricula', [App\Http\Controllers\MatriculaController::class, 'index'])
    ->name('matricula.index');
    Route::post('matricula', [App\Http\Controllers\MatriculaController::class, 'store'])
    ->name('matricula.store');
    Route::put('matricula/{id}', [App\Http\Controllers\MatriculaController::class, 'update'])
    ->name('matricula.update');
    Route::delete('matricula/{id}', [App\Http\Controllers\MatriculaController::class, 'destroy'])
    ->name('matricula.destroy');
});