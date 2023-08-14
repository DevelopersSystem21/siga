<?php

namespace App\Models\Recibo;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Tipo extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = 'recibo_tipos';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $fillable = [
        'codigo', 'nombre', 'esta_activo'
    ];

    protected $casts = [
        'esta_activo' => 'boolean'
    ];
}
