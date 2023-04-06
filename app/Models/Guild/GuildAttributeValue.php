<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Guild;

use Carbon\Carbon;
use App\Models\Value\Value;
use Illuminate\Database\Eloquent\Relations\Pivot;

/**
 * Class GuildAttributeValue
 *
 * @property int $id
 * @property int $guild_attribute_id
 * @property int $value_id
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class GuildAttributeValue extends Pivot
{
	protected $table = 'guild_attribute_value';

	protected $casts = [
		'guild_attribute_id' => 'int',
        'guild_id'=>'int',
		'value_id' => 'int'
	];

	protected $fillable = [
		'guild_attribute_id',
        'guild_id',
		'value_id'
	];
    public function attribute(){
        return $this->hasOne(GuildAttribute::class,'id','guild_attribute_id');
    }
    public function type(){
        return $this->hasOne(Guild::class,'id','guild_id');
    }
    public function value(){
        return $this->hasOne(Value::class,'id','value_id');
    }
}
