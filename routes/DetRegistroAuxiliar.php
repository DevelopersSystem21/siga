<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DetRegistroAuxiliarController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('detalle-registro-auxiliar', [App\Http\Controllers\DetRegistroAuxiliarController::class, 'index'])
    ->name('detalle-registro-auxiliar.index');
    Route::post('detalle-registro-auxiliar', [App\Http\Controllers\DetRegistroAuxiliarController::class, 'store'])
    ->name('detalle-registro-auxiliar.store');
    Route::put('detalle-registro-auxiliar/{id}', [App\Http\Controllers\DetRegistroAuxiliarController::class, 'update'])
    ->name('detalle-registro-auxiliar.update');
    Route::delete('detalle-registro-auxiliar/{id}', [App\Http\Controllers\DetRegistroAuxiliarController::class, 'destroy'])
    ->name('detalle-registro-auxiliar.destroy');
});