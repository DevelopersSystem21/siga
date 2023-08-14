<?php

use App\Models\Ciudad;
use App\Models\Departamento;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get("/selectdepartamentos/{idpais}", function ($idpais) {
    return Departamento::where("idpais",$idpais)->get();
});

Route::get("/selectciudades/{iddep}", function ($iddep) {
    return Ciudad::where("iddep",$iddep)->get();
});

Route::get("/listdepartamentos/{idpais}", function ($idpais) {
    return Departamento::where("idpais",$idpais)->get();
});

Route::get("/listciudades/{iddep}", function ($iddep) {
    return Ciudad::where("iddep",$iddep)->get();
});