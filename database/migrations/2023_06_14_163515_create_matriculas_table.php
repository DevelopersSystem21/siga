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
        Schema::create('matriculas', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->string("codigo");
            $table->date("fecha");
            $table->string("observacion")->nullable();

            $table->uuid("id_estudiantes")->index();
            $table->foreign("id_estudiantes")->references('id')->on('estudiantes');
            $table->uuid("id_periodo_academicos")->index();
            $table->foreign("id_periodo_academicos")->references('id')->on('periodo_academicos');
            $table->uuid("id_ciclos")->index();
            $table->foreign("id_ciclos")->references('id')->on('ciclos');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('matriculas');
    }
};
