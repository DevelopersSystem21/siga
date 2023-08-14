<?php

namespace App\Models;

use App\Traits\Uuids;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Builder;

class Horario extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

    protected $table = 'horarios';
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
        'id_unidad_aperturada', 'inicio', 'fin', 'id_ambiente', 'dia', 'dia_id'
    ];

    protected $dates = [
        'inicio', 'fin'
    ];

    protected $appends = [
        'dia_corto'
    ];

    protected $casts = [
        'inicio' => 'date:H:i a',
        'fin' => 'date:H:i a'
    ];

    public function getDiaCortoAttribute()
    {
        //TODO:  No hay tabla dias asi que podemos poner constantes. Llevar a una clase ENUM.
        $val = '';
        switch ($this->dia_id) {
            case 1:
                $val = 'Lu';
                break;
            case 2:
                $val = 'Ma';
                break;
            case 3:
                $val = 'Mi';
                break;
            case 4:
                $val = 'Ju';
                break;
            case 5:
                $val = 'Vi';
                break;
            case 6:
                $val = 'Sa';
                break;
            case 7:
                $val = 'Do';
                break;
            default:
                $val = '?';
                break;
        };

        return $val;
    }




    public function getInicioCompletoAttribute()
    {
        return Carbon::now()->startOfWeek()->addDays($this->dia_id - 1)->addHours($this->inicio->hour)->addMinutes($this->inicio->minute);
    }

    public function getFinCompletoAttribute()
    {
        return Carbon::now()->startOfWeek()->addDays($this->dia_id - 1)->addHours($this->fin->hour)->addMinutes($this->fin->minute);
    }

    /** Relaciones */
    public function ambiente(): BelongsTo
    {
        return $this->belongsTo(Aulas::class, 'id_ambiente');
    }
    public function unidad_aperturada(): BelongsTo
    {
        return $this->belongsTo(Curso::class, 'id_unidad_aperturada');
    }
    /** Fin Relaciones */


    protected static function booted(): void
    {
        static::addGlobalScope('ordenado', function (Builder $builder) {
            $builder->orderBy('dia_id');
        });
    }
}
