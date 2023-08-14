<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Builder;

class CapacidadLogro extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'capacidad_logros';

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
        'peso',
        'id_unidad_didacticas',
    ];


    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [];

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [];


    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = true;

    protected $with = [
        "unidad_didacticas"
    ];
    protected $appends = [
      //  "porcentaje"
    ];

    public function getPorcentajeAttribute()
    {
        $total = $this->unidad_didactica->capacidades()->sum('peso');
        return round($this->peso * 100 / $total, 2);
    }

    public function unidad_didacticas(): HasOne
    {
        return $this->hasOne(UnidadDidactica::class, "id", "id_unidad_didacticas");
    }

    /**
     * Get the unidad_didactica that owns the CapacidadLogro
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function unidad_didactica(): BelongsTo
    {
        return $this->belongsTo(UnidadDidactica::class, 'id_unidad_didacticas');
    }
    /**
     * Get all of the indicadores for the CapacidadLogro
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function indicadores(): HasMany
    {
        return $this->hasMany(Indicador::class, 'id_capacidad_logros');
    }



    protected static function booted(): void
    {
        static::addGlobalScope('ordenado', function (Builder $builder) {
            $builder->orderBy('nombre');
        });
    }

}
