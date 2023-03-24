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
        Schema::create('_userinfo', function (Blueprint $table) {
            $table->id('uid');
            $table->string('fname', 30);
            $table->string('lname', 30);
            $table->string('email', 100);
            $table->string('password');
            $table->text('address');
            $table->string('city', 30);
            $table->string('state', 30);
            $table->string('zip', 6);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('_userinfo');
    }
};
