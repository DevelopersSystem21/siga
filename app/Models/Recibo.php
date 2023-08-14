<?php

namespace App\Models;

use App\Traits\Uuids;
use Helpers\NumerosEnLetras;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class Recibo extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

    protected $table = 'recibos';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $fillable = [
        'id_serie', 'id_tipo', 'numero', 'fue_anulado', 'id_cuenta', 'id_estudiante', 'nombre', 'obervaciones'
    ];

    protected $casts = [
        'numero' => 'integer',
        'fue_anulado' => 'boolean'
    ];


    public function getMontoEnLetrasAttribute(){

        $helper = new NumerosEnLetras();
        return $helper->convertir($this->pagos->sum('monto'));
    }


    public function getMontoIgvAttribute(){
        return 0.00;
    }

    /**
     * Get all of the pagos for the Recibo
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function pagos(): HasMany
    {
        return $this->hasMany(Pago::class, 'id_recibo');
    }

    /**
     * Get the serie that owns the Recibo
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function serie(): BelongsTo
    {
        return $this->belongsTo(Recibo\Serie::class, 'id_serie');
    }

    /**
     * Get the tipo that owns the Recibo
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function tipo(): BelongsTo
    {
        return $this->belongsTo(Recibo\Tipo::class, 'id_tipo');
    }

    /**
     * Get the cuenta that owns the Recibo
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function cuenta(): BelongsTo
    {
        return $this->belongsTo(Cuenta::class, 'id_cuenta');
    }


    /**
     * Get the estudiante that owns the Recibo
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function estudiante(): BelongsTo
    {
        return $this->belongsTo(Estudiante::class, 'id_estudiante');
    }
}
