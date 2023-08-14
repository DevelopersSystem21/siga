<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ConfiguracionUnidadController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('aulas', [App\Http\Controllers\AmbienteController::class, 'index'])->name('aulas.index');
    Route::get('aulas/create', [App\Http\Controllers\AmbienteController::class, 'create'])->name('aulas.create');
    Route::post('aulas', [App\Http\Controllers\AmbienteController::class, 'store'])->name('aulas.store');
    Route::get('aulas/{id}/edit', [App\Http\Controllers\AmbienteController::class, 'edit'])->name('aulas.edit');
    Route::put('aulas/{id}', [App\Http\Controllers\AmbienteController::class, 'update'])->name('aulas.update');
    Route::delete('aulas/{id}', [App\Http\Controllers\AmbienteController::class, 'destroy'])->name('aulas.destroy');
});