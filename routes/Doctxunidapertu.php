<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DoctxunidapertuController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('docentes-x-unidad-aperturada', [App\Http\Controllers\DoctxunidapertuController::class, 'index'])
    ->name('docentes-x-unidad-aperturada.index');
    Route::post('docentes-x-unidad-aperturada', [App\Http\Controllers\DoctxunidapertuController::class, 'store'])
    ->name('docentes-x-unidad-aperturada.store');
    Route::put('docentes-x-unidad-aperturada/{id}', [App\Http\Controllers\DoctxunidapertuController::class, 'update'])
    ->name('docentes-x-unidad-aperturada.update');
    Route::delete('docentes-x-unidad-aperturada/{id}', [App\Http\Controllers\DoctxunidapertuController::class, 'destroy'])
    ->name('docentes-x-unidad-aperturada.destroy');
});