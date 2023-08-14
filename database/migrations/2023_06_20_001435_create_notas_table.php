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
        Schema::create('notas', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->uuid("id_matricula_unidad")->index();
            $table->foreign("id_matricula_unidad")->references('id')->on('matricula_unidad');
            $table->uuid("id_indicador")->index();
            $table->foreign("id_indicador")->references('id')->on('indicadors');
            /* $table->uuid("criterio_id")->index();
            $table->string("criterio_type");*/
            $table->float('valor')->default(0);
            $table->float('valor_recuperacion')->nullable();
            $table->foreignId('user_id')->constrained();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('notas');
    }
};
