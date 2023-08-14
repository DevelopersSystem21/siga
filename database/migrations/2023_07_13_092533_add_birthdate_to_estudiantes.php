<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;


return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('estudiantes', function (Blueprint $table) {
            $table->date('birthdate')->after('codigo')->nullable();
            $table->uuid('id_apoderado')->after('id_persona')->index()->default('887a0cdc-351b-4601-b53b-082e873ee860');
            $table->foreign('id_apoderado')->references('id')->on('apoderados');
        });

        // Agregar datos de prueba, omitiendo birthdate ya que es nullable
        DB::table('estudiantes')->update([
            'id_apoderado' => '887a0cdc-351b-4601-b53b-082e873ee860',
        ]);
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('estudiantes', function (Blueprint $table) {
            $table->dropColumn('birthdate');
            $table->dropColumn('id_apoderado');
        });
    }
};
