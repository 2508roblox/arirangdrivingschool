<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Registration extends Model
{
    use HasFactory;

    protected $fillable = [
        'first_name', 'last_name', 'email', 'phone',
        'start_date', 'pickup_address', 'service_id', 'comment'
    ];

    public function service()
    {
        return $this->belongsTo(Service::class);
    }
}
