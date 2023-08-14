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
        Schema::table('unidades_aperturadas', function (Blueprint $table) {
            $table->uuid("id_grupo")->after('id_rubro_turno')->nullable()->index();
            $table->foreign("id_grupo")->references('id')->on('grupos');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('unidades_aperturadas', function (Blueprint $table) {
            $table->dropColumn('id_grupo');
        });
    }
};
