<?php

namespace App\Http\Controllers;

use App\Models\PreinscripcionPostulante;
use Illuminate\Http\Request;

class PreinscripcionPostulanteController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {       
            return view('PreinscripcionPostulante.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(PreinscripcionPostulante $preinscripcionPostulante)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(PreinscripcionPostulante $preinscripcionPostulante)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, PreinscripcionPostulante $preinscripcionPostulante)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(PreinscripcionPostulante $preinscripcionPostulante)
    {
        //
    }
}
