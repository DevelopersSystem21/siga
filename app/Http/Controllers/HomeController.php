<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }
    public function perfil()
    {
        $usuario = Auth::user();
        return view('perfil', compact('usuario'));
    }

    public function updatePerfil(Request $request)
    {

        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email',
        ]);
        $usuario = Auth::user();

        $usuario->update($request->all());

        return back()->with('status', 'Guardado correctamente');

    }

    public function updatePassword(Request $request)
    {

        $this->validate($request, [
            'password' => 'required|confirmed'
        ]);
        $usuario = Auth::user();

        $usuario->password = bcrypt($request->get('password'));
        $usuario->save();

        return back()->with('status', 'Guardado correctamente');
    }
}
