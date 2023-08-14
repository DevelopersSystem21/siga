<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\serviciosController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('servicios', [App\Http\Controllers\serviciosController::class, 'index'])->name('servicios.index');
    Route::get('servicios/create', [App\Http\Controllers\serviciosController::class, 'create'])->name('servicios.create');
    Route::post('servicios', [App\Http\Controllers\serviciosController::class, 'store'])->name('servicios.store');
    Route::get('servicios/{id}/edit', [App\Http\Controllers\serviciosController::class, 'edit'])->name('servicios.edit');
    Route::put('servicios/{id}', [App\Http\Controllers\serviciosController::class, 'update'])->name('servicios.update');
    Route::delete('servicios/{id}', [App\Http\Controllers\serviciosController::class, 'destroy'])->name('servicios.destroy');
});