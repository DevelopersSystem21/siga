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
        Schema::create('cuotas', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->uuid("id_credito")->index();
            $table->date('fecha');
            $table->float('monto');
            $table->integer('numero')->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->foreign("id_credito")->references('id')->on('creditos');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('cuotas');
    }
};
