<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;

class ProductoPrograma extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

      
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'producto_programa';

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
        'id_producto',
        'id_programa_academico'
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
        "productos","programa_academicos"
    ];

    public function productos(): HasOne {
        return $this->hasOne(Producto::class, "id", "id_producto");
    }
    public function programa_academicos(): HasOne {
        return $this->hasOne(ProgramaAcademico::class, "id", "id_programa_academico");
    }
}
