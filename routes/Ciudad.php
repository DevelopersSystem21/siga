<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CiudadController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('ciudad', [App\Http\Controllers\CiudadController::class, 'index'])->name('ciudad.index');
    Route::get('ciudad/create', [App\Http\Controllers\CiudadController::class, 'create'])->name('ciudad.create');
    Route::post('ciudad', [App\Http\Controllers\CiudadController::class, 'store'])->name('ciudad.store');
    Route::get('ciudad/{id}/edit', [App\Http\Controllers\CiudadController::class, 'edit'])->name('ciudad.edit');
    Route::put('ciudad/{id}', [App\Http\Controllers\CiudadController::class, 'update'])->name('ciudad.update');
    Route::delete('ciudad/{id}', [App\Http\Controllers\CiudadController::class, 'destroy'])->name('ciudad.destroy');
});