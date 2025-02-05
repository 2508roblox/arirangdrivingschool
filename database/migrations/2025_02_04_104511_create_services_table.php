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
        Schema::create('services', function (Blueprint $table) {
            $table->id();
            $table->string('name'); // Tên gói dịch vụ
            $table->text('duration'); // Thời lượng (vd: "60-90 minutes")
            $table->decimal('price', 8, 2); // Giá tiền
            $table->integer('lesson_count'); // Số lượng buổi học
            $table->json('benefits')->nullable(); // Danh sách lợi ích (mảng JSON)
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('services');
    }
};
