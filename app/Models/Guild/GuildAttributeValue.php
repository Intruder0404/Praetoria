<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Guild;

use App\Models\Attribute\Attribute;
use App\Models\DataType;
use Carbon\Carbon;
use App\Models\Value\Value;
use Illuminate\Database\Eloquent\Relations\Pivot;

/**
 * Class GuildAttributeValue
 *
 * @property int $id
 * @property int $attribute_id
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
		'attribute_id' => 'int',
        'guild_id'=>'int',
        'type_id'=>'int',
		'value_id' => 'int'
	];

	protected $fillable = [
		'attribute_id',
        'guild_id',
        'type_id',
		'value_id'
	];
    public function Attribute(){
        return $this->hasOne(Attribute::class,'id','attribute_id');
    }
    public function type(){
        return $this->hasOne(DataType::class,'id','type_id');
    }
    public function value(){
        return $this->hasOne(Value::class,'id','value_id');
    }
}
