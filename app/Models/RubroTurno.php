<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class RubroTurno extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

    protected $table = 'rubro_turno';
    /**
     * Indicates if the model's ID is auto-incrementing.
     *
     * @var bool
     */
    public $incrementing = false;

    /**
     * The data type of the auto-incrementing ID.
     *
     * @var string
     */
    protected $keyType = 'string';


    public function getNombreAttribute()
    {
        return $this->rubro->nombre . '-' . $this->turno->nombre;
    }


    /** Relaciones */
    public function rubro(): BelongsTo
    {
        return $this->belongsTo(Rubro::class, 'id_rubro');
    }
    public function turno(): BelongsTo
    {
        return $this->belongsTo(Turno::class, 'id_turno');
    }
    /** Fin Relaciones */
}
