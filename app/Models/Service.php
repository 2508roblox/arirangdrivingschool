<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'duration', 'price', 'lesson_count', 'benefits'];

    protected $casts = [
        'benefits' => 'array', // Chuyển JSON thành array khi lấy dữ liệu
    ];
}
