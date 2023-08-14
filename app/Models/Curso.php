<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasManyThrough;
use Illuminate\Database\Eloquent\SoftDeletes;

class Curso extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

    protected $table = 'unidades_aperturadas';
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
        'codigo', 'nombre', 'cupo_maximo', 'id_docente', 'id_unidad_didactica', 'id_periodo', 'inicio', 'fin', 'id_rubro_turno', 'id_grupo'
    ];

    protected $dates = [
        'inicio', 'fin'
    ];

    protected $casts = [
        'inicio' => 'date:Y-m-d',
        'fin' => 'date:Y-m-d'
    ];


    public function getHorarioAgrupadoAttribute()
    {

        $horas = collect();
        foreach ($this->horarios as $horario) {
            $horas->push([
                'dia' => $horario->dia_corto,
                'dia_largo' => $horario->dia,
                'horas' => $horario->inicio->format('H:i a') . ' a ' . $horario->fin->format('H:i a')
            ]);
        }
        $formateado = collect();

        foreach ($horas->groupBy('horas') as $dia => $horas) {
            $formateado->push([
                'hora' => $dia,
                'dias' => $horas->pluck('dia')->implode(', '),
                'dias_largo' => $horas->pluck('dia_largo')->implode(', ')
            ]);
        }

        return $formateado;
    }

    /** Relaciones */
    public function docente(): BelongsTo
    {
        return $this->belongsTo(Docente::class, 'id_docente');
    }
    public function unidad_didactica(): BelongsTo
    {
        return $this->belongsTo(UnidadDidactica::class, 'id_unidad_didactica');
    }
    public function periodo(): BelongsTo
    {
        return $this->belongsTo(PeriodoAcademico::class, 'id_periodo');
    }
    public function rubro_turno(): BelongsTo
    {
        return $this->belongsTo(RubroTurno::class, 'id_rubro_turno');
    }
    public function grupo(): BelongsTo
    {
        return $this->belongsTo(Grupo::class, 'id_grupo');
    }

    /**
     * Get all of the horarios for the Curso
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function horarios(): HasMany
    {
        return $this->hasMany(Horario::class, 'id_unidad_aperturada');
    }

    public function matricula_unidades(): HasMany
    {
        return $this->hasMany(MatriculaUnidad::class, 'id_unidad_aperturada');
    }
    public function matriculas(): HasManyThrough
    {
        return $this->hasManyThrough(Matricula::class, MatriculaUnidad::class, 'id_unidad_aperturada', 'id', 'id', 'id_matricula');
    }
    /*
    public function matriculas(): BelongsToMany
    {
        return $this->belongsToMany(Matricula::class, 'matricula_unidad', 'id_unidad_aperturada', 'id_matricula')->using(MatriculaUnidad::class);
    }
    */
    /** Fin Relaciones */
}
