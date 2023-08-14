<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TipoIdentificacionController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('tipo-identificacion', [App\Http\Controllers\TipoIdentificacionController::class, 'index'])
    ->name('tipo-identificacion.index');
    Route::get('tipo-identificacion/create', [App\Http\Controllers\TipoIdentificacionController::class, 'create'])
    ->name('tipo-identificacion.create');
    Route::post('tipo-identificacion', [App\Http\Controllers\TipoIdentificacionController::class, 'store'])
    ->name('tipo-identificacion.store');
    Route::get('tipo-identificacion/{id}/edit', [App\Http\Controllers\TipoIdentificacionController::class, 'edit'])
    ->name('tipo-identificacion.edit');
    Route::put('tipo-identificacion/{id}', [App\Http\Controllers\TipoIdentificacionController::class, 'update'])
    ->name('tipo-identificacion.update');
    Route::delete('tipo-identificacion/{id}', [App\Http\Controllers\TipoIdentificacionController::class, 'destroy'])
    ->name('tipo-identificacion.destroy');
});