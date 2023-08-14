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
        Schema::table('matriculas', function (Blueprint $table) {
            $table->uuid("id_rubro_turno")->index();
            $table->foreign("id_rubro_turno")->references('id')->on('rubro_turno');
            $table->float('monto');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('matriculas', function (Blueprint $table) {
            $table->dropConstrainedForeignIdFor('id_rubro_turno');
            $table->dropColumn('id_rubro_turno');
            $table->dropColumn('monto');
        });
    }
};
