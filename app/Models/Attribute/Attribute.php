<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Attribute;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Attribute
 *
 * @property int $id
 * @property string $name
 * @property string $type
 * @property boolean $isActive
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class Attribute extends Model
{
	protected $table = 'attributes';

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
        'isActive' => 'boolean',
    ];
}
