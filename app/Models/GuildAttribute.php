<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class GuildAttribute
 * 
 * @property int $id
 * @property int $guild_id
 * @property int $attribute_id
 * @property int $value_id
 *
 * @package App\Models
 */
class GuildAttribute extends Model
{
	protected $table = 'guild_attribute';
	public $timestamps = false;

	protected $casts = [
		'guild_id' => 'int',
		'attribute_id' => 'int',
		'value_id' => 'int'
	];

	protected $fillable = [
		'guild_id',
		'attribute_id',
		'value_id'
	];
}
