<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\IndicadorController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('indicador', [App\Http\Controllers\IndicadorController::class, 'index'])
    ->name('indicador.index');
    Route::post('indicador', [App\Http\Controllers\IndicadorController::class, 'store'])
    ->name('indicador.store');
    Route::put('indicador/{id}', [App\Http\Controllers\IndicadorController::class, 'update'])
    ->name('indicador.update');
    Route::delete('indicador/{id}', [App\Http\Controllers\IndicadorController::class, 'destroy'])
    ->name('indicador.destroy');
});