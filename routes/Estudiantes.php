<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EstudianteController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('estudiantes', [App\Http\Controllers\EstudianteController::class, 'index'])->name('estudiantes.index');
    Route::get('estudiantes/create', [App\Http\Controllers\EstudianteController::class, 'create'])->name('estudiantes.create');
    Route::post('estudiantes', [App\Http\Controllers\EstudianteController::class, 'store'])->name('estudiantes.store');
    Route::get('estudiantes/{id}', [App\Http\Controllers\EstudianteController::class, 'show'])->name('estudiantes.show');
    Route::get('estudiantes/{id}/edit', [App\Http\Controllers\EstudianteController::class, 'edit'])->name('estudiantes.edit');
    Route::put('estudiantes/{id}', [App\Http\Controllers\EstudianteController::class, 'update'])->name('estudiantes.update');
    Route::delete('estudiantes/{id}', [App\Http\Controllers\EstudianteController::class, 'destroy'])->name('estudiantes.destroy');
});