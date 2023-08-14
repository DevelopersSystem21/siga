<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ConfiguracionUnidadController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('turno', [App\Http\Controllers\TurnoController::class, 'index'])->name('turno.index');
    Route::get('turno/create', [App\Http\Controllers\TurnoController::class, 'create'])->name('turno.create');
    Route::post('turno', [App\Http\Controllers\TurnoController::class, 'store'])->name('turno.store');
    Route::get('turno/{id}/edit', [App\Http\Controllers\TurnoController::class, 'edit'])->name('turno.edit');
    Route::put('turno/{id}', [App\Http\Controllers\TurnoController::class, 'update'])->name('turno.update');
    Route::delete('turno/{id}', [App\Http\Controllers\TurnoController::class, 'destroy'])->name('turno.destroy');
});