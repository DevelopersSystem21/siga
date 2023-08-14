<?php

namespace App\Models;

use App\Traits\Uuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;

class Apoderado extends Model
{
    use HasFactory;
    use Uuids;
    use SoftDeletes;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'apoderados';

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
        'vinculo',
        'id_persona',
        'id_ciudad',
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
        "personas", "ciudades"
    ];

    public function personas(): HasOne{
        return $this->hasOne(Persona::class, "id", "id_persona");
    }

    public function ciudades(): HasOne{
        return $this->hasOne(Ciudad::class, "idCiudad", "id_ciudad");
    }
}
