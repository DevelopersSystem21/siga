<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class MatriculaUnidad extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

    protected $table = 'matricula_unidad';
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
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'id_unidad_aperturada', 'id_matricula', 'esta_inhabilitado'
    ];

    protected $dates = [];

    protected $casts = [
        'esta_inhabilitado' => 'boolean'
    ];


    /** Relaciones */
    public function unidad_aperturada(): BelongsTo
    {
        return $this->belongsTo(Curso::class, 'id_unidad_aperturada');
    }
    public function matriculas(): BelongsTo
    {
        return $this->belongsTo(Matricula::class, 'id_matricula');
    }
    public function matricula(): BelongsTo
    {
        return $this->belongsTo(Matricula::class, 'id_matricula');
    }


    /**
     * Get all of the notas for the MatriculaUnidad
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function notas(): HasMany
    {
        return $this->hasMany(Nota::class, 'id_matricula_unidad');
    }

    /**
     * Get all of the inasistencias for the MatriculaUnidad
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function inasistencias(): HasMany
    {
        return $this->hasMany(Inasistencia::class, 'id_matricula_unidad');
    }
    /** Fin Relaciones */
}
