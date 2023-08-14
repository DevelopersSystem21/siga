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
        Schema::create('unidad_aperturados', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->string("estado");

            $table->uuid('id_unidad_didacticas')->index();
            $table->foreign('id_unidad_didacticas')->references('id')->on('unidad_didacticas');
            $table->uuid('id_docentes')->index();
            $table->foreign('id_docentes')->references('id')->on('docentes');
            $table->uuid('id_turnos')->index();
            $table->foreign('id_turnos')->references('id')->on('turnos');
            $table->uuid('id_grupos')->index();
            $table->foreign('id_grupos')->references('id')->on('grupos');
            $table->uuid('id_ambientes')->index();
            $table->foreign('id_ambientes')->references('id')->on('ambientes');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('unidad_aperturados');
    }
};
