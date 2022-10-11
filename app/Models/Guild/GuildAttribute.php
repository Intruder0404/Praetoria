<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Guild;

use App\Models\Attribute\Attribute;
use Illuminate\Database\Eloquent\Relations\Pivot;

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
class GuildAttribute extends Pivot
{
	protected $table = 'guild_attributes';
	public $timestamps = false;

	protected $casts = [
		'guild_id' => 'int',
		'attribute_id' => 'int'
	];

	protected $fillable = [
		'guild_id',
		'attribute_id'
	];

    public function guild()
    {
        return $this->hasOne(Guild::class,'id','guild_id');
    }

    public function attribute()
    {
        return $this->hasOne(Attribute::class,'id','attribute_id');
    }

    public function attributeValue()
    {
        return $this->hasOne(GuildAttributeValue::class,'guild_attribute_id','id');
    }
}
