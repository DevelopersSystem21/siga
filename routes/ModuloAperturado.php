<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ModuloAperturadoController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('modulos-aperturados', [App\Http\Controllers\ModuloAperturadoController::class, 'index'])
    ->name('modulos-aperturados.index');
    Route::post('modulos-aperturados', [App\Http\Controllers\ModuloAperturadoController::class, 'store'])
    ->name('modulos-aperturados.store');
    Route::get('modulos-aperturados/{id}/edit', [App\Http\Controllers\ModuloAperturadoController::class, 'edit'])
    ->name('modulos-aperturados.edit');
    Route::put('modulos-aperturados/{id}', [App\Http\Controllers\ModuloAperturadoController::class, 'update'])
    ->name('modulos-aperturados.update');
    Route::delete('modulos-aperturados/{id}', [App\Http\Controllers\ModuloAperturadoController::class, 'destroy'])
    ->name('modulos-aperturados.destroy');
});