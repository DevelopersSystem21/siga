<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Inasistencia extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

    protected $table = 'inasistencias';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $fillable = [
        'id_matricula_unidad',
        'id_horario',
        'codigo',
        'fecha',
        'semana',
        'es_tardanza',
        'es_permiso',
        'user_id'
    ];

    protected $casts = [];

    /**
     * Get the matricula_unidad that owns the Nota
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function matricula_unidad(): BelongsTo
    {
        return $this->belongsTo(MatriculaUnidad::class, 'id_matricula_unidad');
    }

    /**
     * Get the horario that owns the Nota
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function horario(): BelongsTo
    {
        return $this->belongsTo(Horario::class, 'id_horario');
    }

    /**
     * Get the user that owns the Nota
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
