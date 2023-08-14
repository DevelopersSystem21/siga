<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductoController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('producto', [App\Http\Controllers\ProductoController::class, 'index'])
    ->name('producto.index');
    Route::get('producto/create', [App\Http\Controllers\ProductoController::class, 'create'])
    ->name('producto.create');
    Route::post('producto', [App\Http\Controllers\ProductoController::class, 'store'])
    ->name('producto.store');
    Route::put('producto/{id}', [App\Http\Controllers\ProductoController::class, 'update'])
    ->name('producto.update');
    Route::delete('producto/{id}', [App\Http\Controllers\ProductoController::class, 'destroy'])
    ->name('producto.destroy');
    
});