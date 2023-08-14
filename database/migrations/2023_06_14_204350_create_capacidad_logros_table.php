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
        Schema::create('capacidad_logros', function (Blueprint $table) {
            $table->uuid("id")->primary();
            $table->string("nombre");
            $table->decimal('peso', 9, 2);
            $table->uuid("id_unidad_didacticas")->index();
            $table->foreign("id_unidad_didacticas")->references('id')->on('unidad_didacticas');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('capacidad_logros');
    }
};
