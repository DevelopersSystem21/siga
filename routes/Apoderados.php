<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ApoderadosController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('apoderados', [App\Http\Controllers\ApoderadosController::class, 'index'])->name('apoderados.index');
    Route::post('apoderados', [App\Http\Controllers\ApoderadosController::class, 'store'])->name('apoderados.store');
    Route::get('apoderados/{id}', [App\Http\Controllers\ApoderadosController::class, 'show'])->name('apoderados.show');
    Route::get('apoderados/{id}/edit', [App\Http\Controllers\ApoderadosController::class, 'edit'])->name('apoderados.edit');
    Route::put('apoderados/{id}', [App\Http\Controllers\ApoderadosController::class, 'update'])->name('apoderados.update');
    Route::delete('apoderados/{id}', [App\Http\Controllers\ApoderadosController::class, 'destroy'])->name('apoderados.destroy');
    Route::get('/buscar-personas', [App\Http\Controllers\ApoderadosController::class, 'buscarPersonas'])->name('apoderados.buscar');

});