<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Descuento extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

    protected $table = 'descuentos';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $fillable = [
        'codigo', 'nombre', 'porcentaje',
    ];

    protected $casts = [
        'porcentaje' => 'float'
    ];
}
