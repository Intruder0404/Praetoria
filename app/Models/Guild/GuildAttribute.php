<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Guild;

use App\Models\Attribute\Attribute;
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
	protected $table = 'guild_attributes';
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
