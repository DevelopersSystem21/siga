<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ActividadController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('actividades', [App\Http\Controllers\ActividadController::class, 'index'])->name('actividades.index');
    Route::get('actividades/create', [App\Http\Controllers\ActividadController::class, 'create'])->name('actividades.create');
    Route::post('actividades', [App\Http\Controllers\ActividadController::class, 'store'])->name('actividades.store');
    Route::get('actividades/{id}', [App\Http\Controllers\ActividadController::class, 'show'])->name('actividades.show');
    Route::get('actividades/{id}/edit', [App\Http\Controllers\ActividadController::class, 'edit'])->name('actividades.edit');
    Route::put('actividades/{id}', [App\Http\Controllers\ActividadController::class, 'update'])->name('actividades.update');
    Route::delete('actividades/{id}', [App\Http\Controllers\ActividadController::class, 'destroy'])->name('actividades.destroy');
});