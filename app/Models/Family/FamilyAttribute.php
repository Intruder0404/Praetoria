<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Family;

use Illuminate\Database\Eloquent\Model;

/**
 * Class FamilyAttribute
 *
 * @property int $id
 * @property int $family_id
 * @property int $attribute_id
 *
 * @package App\Models
 */
class FamilyAttribute extends Model
{
	protected $table = 'family_attributes';
	public $timestamps = false;

	protected $casts = [
		'family_id' => 'int',
		'attribute_id' => 'int'
	];

	protected $fillable = [
		'family_id',
		'attribute_id'
	];

    public function family()
    {
        return $this->hasOne('App\Models\Guild\Family','id','family_id');
    }

    public function attribute()
    {
        return $this->hasOne('App\Models\Attribute\Attribute','id','attribute_id');
    }

    public function attributeValue()
    {
        return $this->hasOne(FamilyAttributeValue::class,'family_attribute_id','id');
    }
}
