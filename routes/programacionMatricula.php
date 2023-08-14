<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProgramacionMatricula
;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::middleware(['web', 'auth'])->group(function () {
    Route::get('programaciomMatricula', [App\Http\Controllers\ProgramacionMatricula::class, 'index'])
        ->name('programacioMatricula.index');
    
});