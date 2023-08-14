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
        Schema::create('matricula_unidad', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->uuid("id_matricula")->index();
            $table->foreign("id_matricula")->references('id')->on('matriculas');
            $table->uuid("id_unidad_aperturada")->index();
            $table->foreign("id_unidad_aperturada")->references('id')->on('unidades_aperturadas');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('matricula_unidad');
    }
};
