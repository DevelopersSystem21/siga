<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Pago extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

    protected $table = 'pagos';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $fillable = [
        'id_recibo',
        'id_periodo',
        'id_producto',
        'id_descuento',
        'cantidad',
        'monto',
    ];

    protected $casts = [
        'monto' => 'float'
    ];

    /**
     * Get the recibo that owns the Pago
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function recibo(): BelongsTo
    {
        return $this->belongsTo(Recibo::class, 'id_recibo');
    }


    /**
     * Get the periodo that owns the Pago
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function periodo(): BelongsTo
    {
        return $this->belongsTo(PeriodoAcademico::class, 'id_periodo');
    }

    /**
     * Get the producto that owns the Pago
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function producto(): BelongsTo
    {
        return $this->belongsTo(Producto::class, 'id_producto');
    }


    /**
     * Get the descuento that owns the Pago
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function descuento(): BelongsTo
    {
        return $this->belongsTo(Descuento::class, 'id_descuento');
    }
}
