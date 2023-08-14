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
        Schema::create('personas', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->string("nombre");
            $table->string("apellidos");
            $table->string("sexo");
            $table->string("direccion");
            $table->string("telefono");
            $table->string("email");
            $table->string("numiden");
            $table->uuid('id_tipo_identificacion')->index();
            $table->foreign('id_tipo_identificacion')->references('id')->on('tipo_identificacions');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('personas');
    }
};
