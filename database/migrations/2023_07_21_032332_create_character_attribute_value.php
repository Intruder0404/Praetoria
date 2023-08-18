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
        Schema::create('character_attribute_value', function (Blueprint $table) {
            $table->id();
            $table->string('character_attribute_id');
            $table->string('character_id');
            $table->string('type_id');
            $table->string('value_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('character_attribute_value');
    }
};
