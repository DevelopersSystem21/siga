<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Convalidacion extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

    protected $table = 'convalidaciones';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $fillable = [
        'id_estudiante', 'id_unidad_academica', 'nota'
    ];
}
