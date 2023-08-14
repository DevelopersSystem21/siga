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
        Schema::create('recibo_tipos', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->string('codigo');
            $table->string('nombre');
            $table->float('impuesto')->default(0);
            $table->boolean('esta_activo')->default(true);
            $table->timestamps();
            $table->softDeletes();
        });
        Schema::create('recibo_series', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->string('codigo');
            $table->string('nombre');
            $table->boolean('esta_activo')->default(true);
            $table->timestamps();
            $table->softDeletes();
        });
        Schema::create('recibos', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->uuid("id_serie")->index();
            $table->uuid("id_tipo")->index();
            $table->uuid("id_cuenta")->index();
            $table->uuid("id_estudiante")->index();
            $table->integer('numero');
            $table->string('nombre');
            $table->boolean('fue_anulado')->default(false);
            $table->string('obervaciones', 1000)->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->foreign("id_serie")->references('id')->on('recibo_series');
            $table->foreign("id_tipo")->references('id')->on('recibo_tipos');
            $table->foreign("id_cuenta")->references('id')->on('cuentas');
            $table->foreign("id_estudiante")->references('id')->on('estudiantes');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('recibos');
        Schema::dropIfExists('recibo_series');
        Schema::dropIfExists('recibo_tipos');
    }
};
