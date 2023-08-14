<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('convalidaciones', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->uuid("id_estudiante")->index();
            $table->foreign("id_estudiante")->references('id')->on('estudiantes');
            $table->uuid("id_unidad_academica")->index();
            $table->foreign("id_unidad_academica")->references('id')->on('unidad_didacticas');
            $table->integer('nota');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('convalidaciones');
    }
};
