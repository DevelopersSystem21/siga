<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DepartamentoController;

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('departamento', [App\Http\Controllers\DepartamentoController::class, 'index'])->name('departamento.index');
    Route::get('departamento/create', [App\Http\Controllers\DepartamentoController::class, 'create'])->name('departamento.create');
    Route::post('departamento', [App\Http\Controllers\DepartamentoController::class, 'store'])->name('departamento.store');
    Route::get('departamento/{id}/edit', [App\Http\Controllers\DepartamentoController::class, 'edit'])->name('departamento.edit');
    Route::put('departamento/{id}', [App\Http\Controllers\DepartamentoController::class, 'update'])->name('departamento.update');
    Route::delete('departamento/{id}', [App\Http\Controllers\DepartamentoController::class, 'destroy'])->name('departamento.destroy');
});