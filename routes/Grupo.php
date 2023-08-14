<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GrupoController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('grupo', [App\Http\Controllers\GrupoController::class, 'index'])
    ->name('grupo.index');
    Route::post('grupo', [App\Http\Controllers\GrupoController::class, 'store'])
    ->name('grupo.store');
    Route::put('grupo/{id}', [App\Http\Controllers\GrupoController::class, 'update'])
    ->name('grupo.update');
    Route::delete('grupo/{id}', [App\Http\Controllers\GrupoController::class, 'destroy'])
    ->name('grupo.destroy');
});