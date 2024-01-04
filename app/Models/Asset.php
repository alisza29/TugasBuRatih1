<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Asset extends Model
{
    use HasFactory;
    // kita perlu menentukan kolom mana saja yg boleh diisi user
    public $fillable = [
        'user_id',
        'name',
        'image',
        'description',
        'quantity',
    ];

    // kita perlu menentukan relasi antara asset dengan user
    public function user()
    {
        // belongsto artinya asset dimiliki oleh user
        return $this->belongsTo(User::class);
    }

    public function getImageAttribute($image)
    {
        return asset('storage/' . $image);
    }
}
