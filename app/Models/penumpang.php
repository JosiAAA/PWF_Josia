<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class penumpang extends Model
{
    use HasFactory;

    protected $fillable = ['nama','umur','telp','maskapai','destinasi','tanggal','harga'];
}
