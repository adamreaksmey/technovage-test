<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Purchases extends Model
{
    use HasFactory;
    protected $table = "purchases";
    protected $guarded = [
        "id",
        "created_at",
        "deleted_at"
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'customer_id');
    }
}
