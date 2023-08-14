<?php

namespace Database\Seeders;

use App\Models\Actividad;
use App\Models\Recibo;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class ReciboSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('cuentas')->insert(
            [
                'id' => fake()->uuid(),
                'codigo' => 'IBK',
                'nombre' => 'Interbank',
            ]
        );

        DB::table('recibo_series')->insert(
            [
                'id' => fake()->uuid(),
                'codigo' => 'S001',
                'nombre' => 'Serie 1',
            ]
        );
        DB::table('recibo_series')->insert(
            [
                'id' => fake()->uuid(),
                'codigo' => 'S002',
                'nombre' => 'Serie 2',
            ]
        );
        DB::table('recibo_tipos')->insert(
            [
                'id' => fake()->uuid(),
                'codigo' => 'B',
                'nombre' => 'Boleta',
            ]
        );
        DB::table('recibo_tipos')->insert(
            [
                'id' => fake()->uuid(),
                'codigo' => 'F',
                'nombre' => 'Factura',
            ]
        );
    }
}
