<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;

class Matricula extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'matriculas';

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
        'codigo',
        'fecha',
        'observacion',
        'id_estudiantes',
        'id_periodo_academicos',
        'id_ciclos',
        'monto', 'id_rubro_turno'
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
    protected $casts = [
        'fecha' => 'date'
    ];


    protected $dates = ['fecha'];



    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = true;

    protected $with = [
        "estudiantes", "periodo_academicos", "ciclos"
    ];

    public function estudiantes(): HasOne
    {
        return $this->hasOne(TipoCalificacion::class, "id", "id_estudiantes");
    }
    public function estudiante(): BelongsTo
    {
        return $this->belongsTo(Estudiante::class, "id_estudiantes");
    }
    public function periodo_academicos(): HasOne
    {
        return $this->hasOne(PeriodoAcademico::class, "id", "id_periodo_academicos");
    }
    public function periodo(): BelongsTo
    {
        return $this->belongsTo(PeriodoAcademico::class, "id_periodo_academicos");
    }

    public function ciclos(): HasOne
    {
        return $this->hasOne(Ciclo::class, "id", "id_ciclos");
    }

    public function ciclo(): BelongsTo
    {
        return $this->belongsTo(Ciclo::class, "id_ciclos");
    }

    public function rubro_turno(): BelongsTo
    {
        return $this->belongsTo(RubroTurno::class, 'id_rubro_turno');
    }


    public function matricula_unidades(): HasMany
    {
        return $this->hasMany(MatriculaUnidad::class, 'id_matricula');
    }
}
