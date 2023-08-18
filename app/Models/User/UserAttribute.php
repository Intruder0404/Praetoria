<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\User;

use App\Models\Attribute\Attribute;
use Illuminate\Database\Eloquent\Model;

/**
 * Class UserAttribute
 *
 * @property int $id
 * @property int $attribute_id
 *
 * @package App\Models
 */
class UserAttribute extends Model
{
	protected $table = 'user_attributes';
	public $timestamps = false;

	protected $casts = [
		'attribute_id' => 'int'
	];

	protected $fillable = [
		'attribute_id'
	];

    public function attribute()
    {
        return $this->hasOne(Attribute::class,'id','attribute_id');
    }
}
