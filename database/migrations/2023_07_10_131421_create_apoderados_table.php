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
        Schema::create('apoderados', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->string("vinculo");
            $table->uuid('id_persona')->index();
            $table->foreign('id_persona')->references('id')->on('personas');
            $table->uuid('id_ciudad')->index();
            $table->foreign('id_ciudad')->references('idCiudad')->on('ciudades');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('apoderados');
    }
};
