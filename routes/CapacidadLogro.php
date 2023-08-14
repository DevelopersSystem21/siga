<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CapacidadLogroController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('capacidad-logro', [App\Http\Controllers\CapacidadLogroController::class, 'index'])
    ->name('capacidad-logro.index');
    Route::post('capacidad-logro', [App\Http\Controllers\CapacidadLogroController::class, 'store'])
    ->name('capacidad-logro.store');
    Route::get('capacidad-logro/{id}', [App\Http\Controllers\CapacidadLogroController::class, 'show'])
    ->name('capacidad-logro.show');
    Route::put('capacidad-logro/{id}', [App\Http\Controllers\CapacidadLogroController::class, 'update'])
    ->name('capacidad-logro.update');
    Route::delete('capacidad-logro/{id}', [App\Http\Controllers\CapacidadLogroController::class, 'destroy'])
    ->name('capacidad-logro.destroy');
});