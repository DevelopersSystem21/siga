<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Cuenta extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = 'cuentas';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $fillable = [
        'codigo', 'nombre'
    ];

    protected $casts = [
        'esta_activo' => 'boolean'
    ];
}
