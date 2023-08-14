<?php

namespace Database\Seeders;

use App\Models\Actividad;
use App\Models\Recibo;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class DescuentoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('descuentos')->insert(
            [
                'id' => fake()->uuid(),
                'codigo' => 'D1',
                'nombre' => 'Descuento 20',
                'porcentaje' => 20
            ]
        );
        DB::table('descuentos')->insert(
            [
                'id' => fake()->uuid(),
                'codigo' => 'D2',
                'nombre' => 'Descuento 50',
                'porcentaje' => 50
            ]
        );
    }
}
