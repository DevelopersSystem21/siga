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
        Schema::table('ambientes', function (Blueprint $table) {
            $table->string('nombre')->after('id');
        });
        Schema::create('horarios', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->uuid("id_unidad_aperturada")->index();
            $table->foreign("id_unidad_aperturada")->references('id')->on('unidades_aperturadas');
            $table->uuid("id_ambiente")->index();
            $table->foreign("id_ambiente")->references('id')->on('ambientes');
            $table->string('dia');
            $table->integer('dia_id');
            $table->time('inicio');
            $table->time('fin');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('horarios');
        Schema::table('ambientes', function (Blueprint $table) {
            $table->dropColumn('nombre');
        });
    }
};
