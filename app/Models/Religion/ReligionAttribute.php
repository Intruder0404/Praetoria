<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Religion;

use Illuminate\Database\Eloquent\Model;

/**
 * Class ReligionAttribute
 *
 * @property int $id
 * @property int $religion_id
 * @property int $attribute_id
 * @property int $value_id
 *
 * @package App\Models
 */
class ReligionAttribute extends Model
{
	protected $table = 'religion_attributes';
	public $timestamps = false;

	protected $casts = [
		'religion_id' => 'int',
		'attribute_id' => 'int'
	];

	protected $fillable = [
		'religion_id',
		'attribute_id'
	];

    public function religion()
    {
        return $this->hasOne('App\Models\Religion\Religion','id','religion_id');
    }

    public function attribute()
    {
        return $this->hasOne('App\Models\Attribute\Attribute','id','attribute_id');
    }

    public function attributeValue()
    {
        return $this->hasOne(ReligionAttributeValue::class,'religion_attribute_id','id');
    }
}
