<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ActaNotaController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('acta-nota', [App\Http\Controllers\ActaNotaController::class, 'index'])
    ->name('acta-nota.index');
    Route::post('acta-nota', [App\Http\Controllers\ActaNotaController::class, 'store'])
    ->name('acta-nota.store');
    Route::put('acta-nota/{id}', [App\Http\Controllers\ActaNotaController::class, 'update'])
    ->name('acta-nota.update');
    Route::delete('acta-nota/{id}', [App\Http\Controllers\ActaNotaController::class, 'destroy'])
    ->name('acta-nota.destroy');
});