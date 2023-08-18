<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\User;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Rank
 *
 * @property int $id
 * @property string|null $name
 *
 * @package App\Models
 */
class Rank extends Model
{
    protected $table = 'rank';
    public $timestamps = false;

    protected $fillable = [
        'name',
        'isActive'
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'isActive' => 'boolean',
    ];
}
