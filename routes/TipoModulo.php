<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TipoModuloController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('tipo-modulo', [App\Http\Controllers\TipoModuloController::class, 'index'])
    ->name('tipo-modulo.index');
    Route::get('tipo-modulo/create', [App\Http\Controllers\TipoModuloController::class, 'create'])
    ->name('tipo-modulo.create');
    Route::post('tipo-modulo', [App\Http\Controllers\TipoModuloController::class, 'store'])
    ->name('tipo-modulo.store');
    Route::get('tipo-modulo/{id}/edit', [App\Http\Controllers\TipoModuloController::class, 'edit'])
    ->name('tipo-modulo.edit');
    Route::put('tipo-modulo/{id}', [App\Http\Controllers\TipoModuloController::class, 'update'])
    ->name('tipo-modulo.update');
    Route::delete('tipo-modulo/{id}', [App\Http\Controllers\TipoModuloController::class, 'destroy'])
    ->name('tipo-modulo.destroy');
    
});