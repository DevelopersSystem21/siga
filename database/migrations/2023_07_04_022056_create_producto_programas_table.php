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
        Schema::create('producto_programa', function (Blueprint $table) {
            $table->uuid("id")->primary();

            $table->uuid('id_producto')->index();
            $table->foreign('id_producto')->references('id')->on('productos');
            $table->uuid('id_programa_academico')->index();
            $table->foreign('id_programa_academico')->references('id')->on('programa_academicos');

            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('producto_programa');
    }
};
