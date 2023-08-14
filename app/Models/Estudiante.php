<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;

class Estudiante extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'estudiantes';

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
        'birthdate',
        'estado',
        'id_persona',
        'id_apoderado',
        'id_programa_academico',
        'id_ciudad',
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
        "personas","apoderados", "programa_academicos", "ciudades"
    ];

    public function personas(): HasOne
    {
        return $this->hasOne(Persona::class, "id", "id_persona");
    }
    
    public function persona(): BelongsTo
    {
        return $this->belongsTo(Persona::class, 'id_persona', 'id');
    }
    public function apoderados(): HasOne{
        return $this->hasOne(Apoderado::class, "id", "id_apoderado");
    }
    public function programa_academicos(): HasOne
    {
        return $this->hasOne(ProgramaAcademico::class, "id", "id_programa_academico");
    }

    public function programa_academico(): BelongsTo
    {
        return $this->belongsTo(ProgramaAcademico::class, 'id_programa_academico');
    }

    public function ciudades(): HasOne
    {
        return $this->hasOne(Ciudad::class, "idCiudad", "id_ciudad");
    }


    /**
     * Get all of the matriculas for the Estudiante
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function matriculas(): HasMany
    {
        return $this->hasMany(Matricula::class, 'id_estudiantes');
    }
    public function matricula(): HasOne
    {
        return $this->hasOne(Matricula::class, 'id_estudiantes');
    }


    /**
     * Get all of the recibos for the Estudiante
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function recibos(): HasMany
    {
        return $this->hasMany(Recibo::class, 'id_estudiante');
    }
    public function recibos_validos(): HasMany
    {
        return $this->hasMany(Recibo::class, 'id_estudiante')->where('fue_anulado', false);
    }


    /**
     * Get all of the creditos for the Estudiante
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function creditos(): HasMany
    {
        return $this->hasMany(Credito::class, 'id_estudiante');
    }


    /**
     * Get all of the convalidaciones for the Estudiante
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function convalidaciones(): HasMany
    {
        return $this->hasMany(Convalidacion::class, 'id_estudiante');
    }
}
