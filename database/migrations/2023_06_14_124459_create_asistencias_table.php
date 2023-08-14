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
        Schema::create('asistencias', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->date('fecha');
            $table->string("estado");
            $table->uuid("id_registro_auxiliar")->index();
            $table->foreign("id_registro_auxiliar")->references('id')->on('det_registro_auxiliars');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('asistencias');
    }
};
