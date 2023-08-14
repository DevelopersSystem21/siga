<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UnidadesDidacticasController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('unidades-didacticas', [App\Http\Controllers\UnidadesDidacticasController::class, 'index'])
    ->name('unidades-didacticas.index');
    Route::get('unidades-didacticas/create', [App\Http\Controllers\UnidadesDidacticasController::class, 'create'])
    ->name('unidades-didacticas.create');
    Route::post('unidades-didacticas', [App\Http\Controllers\UnidadesDidacticasController::class, 'store'])
    ->name('unidades-didacticas.store');
    Route::get('unidades-didacticas/{id}', [App\Http\Controllers\UnidadesDidacticasController::class, 'show'])
    ->name('unidades-didacticas.show');
    Route::get('unidades-didacticas/{id}/edit', [App\Http\Controllers\UnidadesDidacticasController::class, 'edit'])
    ->name('unidades-didacticas.edit');
    Route::put('unidades-didacticas/{id}', [App\Http\Controllers\UnidadesDidacticasController::class, 'update'])
    ->name('unidades-didacticas.update');
    Route::delete('unidades-didacticas/{id}', [App\Http\Controllers\UnidadesDidacticasController::class, 'destroy'])
    ->name('unidades-didacticas.destroy');
    
});