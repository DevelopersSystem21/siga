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
        Schema::create('indicadors', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->string("nombre");
            $table->uuid("id_capacidad_logros")->index();
            $table->foreign("id_capacidad_logros")->references('id')->on('capacidad_logros');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('indicadors');
    }
};
