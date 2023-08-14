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
        Schema::table('inasistencias', function (Blueprint $table) {
            $table->boolean('es_tardanza')->after('user_id')->default(false);
            $table->boolean('es_permiso')->after('es_tardanza')->default(false);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('inasistencias', function (Blueprint $table) {
            $table->dropColumn('es_tardanza');
            $table->dropColumn('es_permiso');
        });
    }
};
