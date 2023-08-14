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
        Schema::table('matricula_unidad', function (Blueprint $table) {
            $table->boolean("esta_inhabilitado")->default(false);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('matricula_unidad', function (Blueprint $table) {
            $table->dropColumn('esta_inhabilitado');
        });
    }
};
