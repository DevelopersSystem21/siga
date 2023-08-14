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
        Schema::create('det_registro_auxiliars', function (Blueprint $table) {
            $table->uuid("id")->primary();

            $table->uuid('id_unidad_aperturados')->index();
            $table->foreign('id_unidad_aperturados')->references('id')->on('unidad_aperturados');
            $table->uuid('id_estudiantes')->index();
            $table->foreign('id_estudiantes')->references('id')->on('estudiantes');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('det_registro_auxiliars');
    }
};
