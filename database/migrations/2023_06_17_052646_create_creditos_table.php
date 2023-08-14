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
        Schema::create('creditos', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->uuid("id_periodo")->index();
            $table->uuid("id_estudiante")->index();
            $table->integer('numero');
            $table->date('fecha');
            $table->float('monto');
            $table->float('pago_anticipado');
            $table->date('fecha_primera_cuota');
            $table->integer('dias_periodicidad')->default(30);
            $table->integer('dias_gracia');
            $table->float('interes_mora');
            $table->float('penalizacion_mora');
            $table->string('nombre');
            $table->string('observaciones', 1000)->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->foreign("id_periodo")->references('id')->on('periodo_academicos');
            $table->foreign("id_estudiante")->references('id')->on('estudiantes');
        });
        Schema::create('pagos_credito', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->uuid("id_periodo")->index();
            $table->uuid("id_credito")->index();
            $table->uuid("id_producto")->index();
            $table->uuid("id_descuento")->nullable()->index();
            $table->integer('cantidad');
            $table->float('monto');
            $table->timestamps();
            $table->softDeletes();
            $table->foreign("id_credito")->references('id')->on('creditos');
            $table->foreign("id_producto")->references('id')->on('productos');
            $table->foreign("id_descuento")->references('id')->on('descuentos');
            $table->foreign("id_periodo")->references('id')->on('periodo_academicos');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pagos_credito');
        Schema::dropIfExists('creditos');
    }
};
