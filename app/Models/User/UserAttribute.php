<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\User;

use Illuminate\Database\Eloquent\Model;

/**
 * Class UserAttribute
 *
 * @property int $id
 * @property int $user_id
 * @property int $attribute_id
 * @property int $value_id
 *
 * @package App\Models
 */
class UserAttribute extends Model
{
	protected $table = 'user_attributes';
	public $timestamps = false;

	protected $casts = [
		'user_id' => 'int',
		'attribute_id' => 'int'
	];

	protected $fillable = [
		'user_id',
		'attribute_id'
	];

    public function user()
    {
        return $this->hasOne('App\Models\User\User','id','user_id');
    }

    public function attribute()
    {
        return $this->hasOne('App\Models\Attribute\Attribute','id','attribute_id');
    }

    public function attributeValue()
    {
        return $this->hasOne(UserAttributeValue::class,'user_attribute_id','id');
    }
}
