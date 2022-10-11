<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Family;

use Illuminate\Database\Eloquent\Model;
use App\Models\Attribute\Attribute;

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
		'attribute_id' => 'int'
	];

	protected $fillable = [
		'attribute_id'
	];

    public function attribute(){
        return $this->hasOne(Attribute::class,'id','attribute_id');
    }
}
