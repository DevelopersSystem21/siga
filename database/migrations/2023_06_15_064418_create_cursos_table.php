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
        Schema::create('rubros', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->string('nombre');
            $table->timestamps();
            $table->softDeletes();
        });
        Schema::create('rubro_turno', function (Blueprint $table) {
            $table->uuid("id")->primary();

            $table->uuid("id_rubro")->index();
            $table->foreign("id_rubro")->references('id')->on('rubros');
            $table->uuid("id_turno")->index();
            $table->foreign("id_turno")->references('id')->on('turnos');

            $table->timestamps();
            $table->softDeletes();
        });


        Schema::create('unidades_aperturadas', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->string('codigo');
            $table->string('cupo_maximo');
            $table->uuid("id_docente")->index();
            $table->foreign("id_docente")->references('id')->on('docentes');
            $table->uuid("id_unidad_didactica")->index();
            $table->foreign("id_unidad_didactica")->references('id')->on('unidad_didacticas');
            $table->uuid("id_periodo")->index();
            $table->foreign("id_periodo")->references('id')->on('periodo_academicos');
            $table->uuid("id_rubro_turno")->index();
            $table->foreign("id_rubro_turno")->references('id')->on('rubro_turno');
            $table->date('inicio');
            $table->date('fin');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('unidades_aperturadas');
        Schema::dropIfExists('rubro_turno');
        Schema::dropIfExists('rubros');
    }
};
