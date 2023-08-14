<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class Credito extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

    protected $table = 'creditos';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $fillable = [
        'numero',
        'id_periodo',
        'fecha',
        'monto',
        'pago_anticipado',
        'fecha_primera_cuota',
        'dias_periodicidad',
        'dias_gracia',
        'interes_mora',
        'penalizacion_mora',
        'nombre',
        'observaciones',
        'id_estudiante',
        'fue_anulado',
        'fue_pagado'
    ];

    protected $casts = [
        'numero' => 'integer',
        'fue_anulado' => 'boolean',
        'fue_pagado' => 'boolean',
        'fecha' => 'date',
        'fecha_primera_cuota' => 'date',
        'interes_mora' => 'float',
        'penalizacion_mora' => 'float',
    ];

    /**
     * Get all of the pagos for the Recibo
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function pagos(): HasMany
    {
        return $this->hasMany(PagoCredito::class, 'id_credito');
    }

    /**
     * Get all of the cuotas for the Credito
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function cuotas(): HasMany
    {
        return $this->hasMany(Cuota::class, 'id_credito');
    }

    /**
     * Get the periodo that owns the Credito
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function periodo(): BelongsTo
    {
        return $this->belongsTo(PeriodoAcademico::class, 'id_periodo');
    }

    /**
     * Get the estudiante that owns the Credito
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function estudiante(): BelongsTo
    {
        return $this->belongsTo(Estudiante::class, 'id_estudiante');
    }
}
