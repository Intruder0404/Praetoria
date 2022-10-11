<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Kingdom;

use Illuminate\Database\Eloquent\Model;

/**
 * Class KingdomAttribute
 *
 * @property int $id
 * @property int $kingdom_id
 * @property int $attribute_id
 * @property int $value_id
 *
 * @package App\Models
 */
class KingdomAttribute extends Model
{
	protected $table = 'kingdom_attributes';
	public $timestamps = false;

	protected $casts = [
		'kingdom_id' => 'int',
		'attribute_id' => 'int'
	];

	protected $fillable = [
		'kingdom_id',
		'attribute_id'
	];

    public function kingdom()
    {
        return $this->hasOne('App\Models\Kingdom\Kingdom','id','kingdom_id');
    }

    public function attribute()
    {
        return $this->hasOne('App\Models\Attribute\Attribute','id','attribute_id');
    }

    public function attributeValue()
    {
        return $this->hasOne(KingdomAttributeValue::class,'kingdom_attribute_id','id');
    }
}
