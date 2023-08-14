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
        Schema::create('pagos', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->uuid("id_periodo")->index();
            $table->uuid("id_recibo")->index();
            $table->uuid("id_producto")->index();
            $table->uuid("id_descuento")->nullable()->index();
            $table->integer('cantidad');
            $table->float('monto');
            $table->timestamps();
            $table->softDeletes();
            $table->foreign("id_recibo")->references('id')->on('recibos');
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
        Schema::dropIfExists('pagos');
    }
};
