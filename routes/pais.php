<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PaisController;


Route::middleware(['web', 'auth'])->group(function () {
    Route::get('pais', [App\Http\Controllers\PaisController::class, 'index'])->name('pais.index');
    Route::get('pais/create', [App\Http\Controllers\PaisController::class, 'create'])->name('pais.create');
    Route::post('pais', [App\Http\Controllers\PaisController::class, 'store'])->name('pais.store');
    Route::get('pais/{id}/edit', [App\Http\Controllers\PaisController::class, 'edit'])->name('pais.edit');
    Route::put('pais/{id}', [App\Http\Controllers\PaisController::class, 'update'])->name('pais.update');
    Route::delete('pais/{id}', [App\Http\Controllers\PaisController::class, 'destroy'])->name('pais.destroy');
});