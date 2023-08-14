<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;

class DetRegistroAuxiliar extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

/**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'det_registro_auxiliars';

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
        'id_unidad_aperturados',
        'id_estudiantes',
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
        "unidad_aperturados","estudiantes" 
    ];
    
    public function unidad_aperturados(): HasOne {
        return $this->hasOne(UnidadAperturado::class, "id", "id_unidad_aperturados");
    }
    public function estudiantes(): HasOne {
        return $this->hasOne(Estudiante::class, "id", "id_estudiantes");
    }
    
}
