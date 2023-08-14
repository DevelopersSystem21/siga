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

        Schema::create('inasistencias', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->uuid("id_horario")->index();
            $table->foreign("id_horario")->references('id')->on('horarios');
            $table->uuid("id_matricula_unidad")->index();
            $table->foreign("id_matricula_unidad")->references('id')->on('matricula_unidad');
            $table->string('codigo');
            $table->integer('semana')->nullable();
            $table->date('fecha')->nullable();
            $table->foreignId('user_id')->constrained();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('inasistencias');
    }
};
