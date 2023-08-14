<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductoProgramaController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('producto-programa', [App\Http\Controllers\ProductoProgramaController::class, 'index'])
    ->name('producto-programa.index');
    Route::get('producto-programa/create', [App\Http\Controllers\ProductoProgramaController::class, 'create'])
    ->name('producto-programa.create');
    Route::post('producto-programa', [App\Http\Controllers\ProductoProgramaController::class, 'store'])
    ->name('producto-programa.store');
    Route::put('producto-programa/{id}', [App\Http\Controllers\ProductoProgramaController::class, 'update'])
    ->name('producto-programa.update');
    Route::delete('producto-programa/{id}', [App\Http\Controllers\ProductoProgramaController::class, 'destroy'])
    ->name('producto-programa.destroy');
    
});