<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Nota extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

    protected $table = 'notas';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $fillable = [
        'id_matricula_unidad',
        'id_indicador',
        'valor',
        'valor_recuperacion',
        'user_id',
    ];

    protected $casts = [
        'valor' => 'float',
        'valor_recuperacion' => 'float'
    ];

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
     * Get the indicador that owns the Nota
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function indicador(): BelongsTo
    {
        return $this->belongsTo(Indicador::class, 'id_indicador');
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
