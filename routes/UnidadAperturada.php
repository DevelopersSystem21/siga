<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UnidadAperturadoController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('unidades-aperturadas', [App\Http\Controllers\UnidadAperturadoController::class, 'index'])
    ->name('unidades-aperturadas.index');
    Route::post('unidades-aperturadas', [App\Http\Controllers\UnidadAperturadoController::class, 'store'])
    ->name('unidades-aperturadas.store');
    Route::get('unidades-aperturadas/{id}/edit', [App\Http\Controllers\UnidadAperturadoController::class, 'edit'])
    ->name('unidades-aperturadas.edit');
    Route::put('unidades-aperturadas/{id}', [App\Http\Controllers\UnidadAperturadoController::class, 'update'])
    ->name('unidades-aperturadas.update');
    Route::delete('unidades-aperturadas/{id}', [App\Http\Controllers\UnidadAperturadoController::class, 'destroy'])
    ->name('unidades-aperturadas.destroy');
});