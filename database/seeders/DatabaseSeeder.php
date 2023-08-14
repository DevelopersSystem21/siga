<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Producto;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();
        //$this->call(ActividadSeeder::class);
        // $this->call(CursoSeeder::class);
        // $this->call(DocentesSeeder::class);
        Producto::factory()->count(250)->create();
    }
}
