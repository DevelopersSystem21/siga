<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CiclosController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('ciclos', [App\Http\Controllers\CiclosController::class, 'index'])->name('ciclos.index');
    Route::get('ciclos/create', [App\Http\Controllers\CiclosController::class, 'create'])->name('ciclos.create');
    Route::post('ciclos', [App\Http\Controllers\CiclosController::class, 'store'])->name('ciclos.store');
    Route::get('ciclos/{id}/edit', [App\Http\Controllers\CiclosController::class, 'edit'])->name('ciclos.edit');
    Route::put('ciclos/{id}', [App\Http\Controllers\CiclosController::class, 'update'])->name('ciclos.update');
    Route::delete('ciclos/{id}', [App\Http\Controllers\CiclosController::class, 'destroy'])->name('ciclos.destroy');
});