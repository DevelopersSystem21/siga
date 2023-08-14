<?php

namespace Database\Seeders;

use App\Models\Actividad;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ActividadSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $actividad = new Actividad();
        $actividad->nombre='convocatoria Admision';
        $actividad->save();

        $actividad2 = new Actividad();
        $actividad2->nombre='matricula postulantes';
        $actividad2->save();
    }
}
