<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;

class UnidadDidactica extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'unidad_didacticas';

    /**
     * The primary key associated with the table.
     *
     * @var string
     */
    protected $primaryKey = 'id';

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

    /**
     * The database connection that should be used by the model.
     *
     * @var string
     */
    protected $connection = 'mysql';

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'nombre',
        'cantidad_creditos',
        'horas_xsemana',
        'id_modulo_academico',
        'id_ciclo',
        'id_configuracion'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [

    ];

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [

    ];

    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = true;

    protected $with = [
        "modulo_academicos","ciclos","configuracions"
    ];

    public function modulo_academicos(): HasOne {
        return $this->hasOne(ModuloAcademico::class, "id", "id_modulo_academico");
    }

    public function modulo_academico(): BelongsTo {
        return $this->belongsTo(ModuloAcademico::class, "id_modulo_academico");
    }

    public function ciclos(): HasOne {
        return $this->hasOne(Ciclo::class, "id", "id_ciclo");
    }
    public function ciclo(): BelongsTo {
        return $this->belongsTo(Ciclo::class, "id_ciclo");
    }
    public function configuracions(): HasOne {
        return $this->hasOne(Configuracion::class, "id", "id_configuracion");
    }

    /**
     * Get all of the capacidades for the UnidadDidactica
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function capacidades(): HasMany
    {
        return $this->hasMany(CapacidadLogro::class, 'id_unidad_didacticas');
    }

      /**
     * The "booted" method of the model.
     */
    protected static function booted(): void
    {
        static::addGlobalScope('ordenado', function (Builder $builder) {
            $builder->orderBy('created_at');
        });
    }
}
