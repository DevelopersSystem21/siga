<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;

class UnidadAperturado extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

/**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'unidad_aperturados';

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
        'unidad_didacticas',
        'docentes',
        'turnos',
        'grupos',
        'ambientes'
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
        "unidad_didacticas","docentes","turnos","grupos","ambientes"
    ];
    
    public function unidad_didacticas(): HasOne {
        return $this->hasOne(UnidadDidactica::class, "id", "id_unidad_didacticas");
    }
    public function docentes(): HasOne {
        return $this->hasOne(Docente::class, "id", "id_docentes");
    }
    public function turnos(): HasOne {
        return $this->hasOne(Turno::class, "id", "id_turnos");
    }
    public function grupos(): HasOne {
        return $this->hasOne(Grupo::class, "id", "id_grupos");
    }
    public function ambientes(): HasOne {
        return $this->hasOne(Aulas::class, "id", "id_ambientes");
    }
}
