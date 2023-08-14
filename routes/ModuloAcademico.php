<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ModulosController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('modulos', [App\Http\Controllers\ModulosController::class, 'index'])
    ->name('modulos.index');
    Route::get('modulos/create', [App\Http\Controllers\ModulosController::class, 'create'])
    ->name('modulos.create');
    Route::post('modulos', [App\Http\Controllers\ModulosController::class, 'store'])
    ->name('modulos.store');
    Route::get('modulos/{id}/edit', [App\Http\Controllers\ModulosController::class, 'edit'])
    ->name('modulos.edit');
    Route::put('modulos/{id}', [App\Http\Controllers\ModulosController::class, 'update'])
    ->name('modulos.update');
    // Route::get('modulos/-{id}', [App\Http\Controllers\ModulosController::class, 'delete'])
    // ->name('modulos.delete');
    Route::delete('modulos/{id}', [App\Http\Controllers\ModulosController::class, 'destroy'])
    ->name('modulos.destroy');
    
});