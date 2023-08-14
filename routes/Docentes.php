<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DocentesController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('docentes', [App\Http\Controllers\DocentesController::class, 'index'])->name('docentes.index');
    Route::post('docentes', [App\Http\Controllers\DocentesController::class, 'store'])->name('docentes.store');
    Route::get('docentes/{id}/edit', [App\Http\Controllers\DocentesController::class, 'edit'])->name('docentes.edit');
    Route::put('docentes/{id}', [App\Http\Controllers\DocentesController::class, 'update'])->name('docentes.update');
    Route::delete('docentes/{id}', [App\Http\Controllers\DocentesController::class, 'destroy'])->name('docentes.destroy');
});