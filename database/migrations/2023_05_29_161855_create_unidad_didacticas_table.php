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
        Schema::create('unidad_didacticas', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->string("nombre");
            $table->integer("cantidad_creditos");
            $table->integer("horas_xsemana");

            $table->uuid('id_modulo_academico')->index();
            $table->foreign('id_modulo_academico')->references('id')->on('modulo_academicos');
            $table->uuid('id_ciclo')->index();
            $table->foreign('id_ciclo')->references('id')->on('ciclos');
            $table->uuid('id_configuracion')->index();
            $table->foreign('id_configuracion')->references('id')->on('configuracions');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('unidad_didacticas');
    }
};
