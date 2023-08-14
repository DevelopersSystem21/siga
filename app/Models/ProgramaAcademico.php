<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasManyThrough;
use Illuminate\Database\Eloquent\SoftDeletes;

class ProgramaAcademico extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

/**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'programa_academicos';

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


    /**
     * Get all of the modulos for the ProgramaAcademico
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function modulos(): HasMany
    {
        return $this->hasMany(ModuloAcademico::class, 'id_programa_academico');
    }

    public function unidades(): HasManyThrough
    {
        return $this->hasManyThrough(UnidadDidactica::class, ModuloAcademico::class,  'id_programa_academico', 'id_modulo_academico');
    }

    /**
     * The producto that belong to the ProgramaAcademico
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function productos(): BelongsToMany
    {
        return $this->belongsToMany(Producto::class, 'producto_programa', 'id_programa_academico', 'id_producto');
    }
}
