<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Cuota extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

    protected $table = 'cuotas';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $fillable = [
        'id_credito',
        'numero',
        'fecha',
        'monto'
    ];

    protected $casts = [
        'monto' => 'float',
        'fecha' => 'date'
    ];

    /**
     * Get the credito that owns the Pago
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function credito(): BelongsTo
    {
        return $this->belongsTo(Credito::class, 'id_credito');
    }
}
