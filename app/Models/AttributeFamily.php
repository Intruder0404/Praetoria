<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class AttributeFamily
 * 
 * @property int $id
 * @property int $family_id
 * @property int $attribute_id
 * @property int $value_id
 *
 * @package App\Models
 */
class AttributeFamily extends Model
{
	protected $table = 'attribute_families';
	public $timestamps = false;

	protected $casts = [
		'family_id' => 'int',
		'attribute_id' => 'int',
		'value_id' => 'int'
	];

	protected $fillable = [
		'family_id',
		'attribute_id',
		'value_id'
	];
}
