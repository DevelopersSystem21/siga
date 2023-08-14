<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class Producto extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

    protected $table = 'productos';
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

    protected $fillable = [
        'codigo', 'nombre', 'monto'
    ];

    protected $casts = [
        'monto' => 'float'
    ];

    public function scopeSelect2($query)
    {
        return $query->select('productos.id', 'productos.monto')->selectRaw("CONCAT(productos.codigo, ' - ', productos.nombre) as nombre");
    }

    /** Relaciones */

    /**
     * The programas that belong to the Producto
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function programas(): BelongsToMany
    {
        return $this->belongsToMany(ProgramaAcademico::class, 'producto_programas', 'id_programa_academico', 'id_producto');
    }

    /** Fin Relaciones */
}
