<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Religion;

use App\Models\Attribute\Attribute;
use App\Models\Value\Value;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;

/**
 * Class ReligionAttributeValue
 *
 * @property int $id
 * @property int $attribute_id
 * @property int $value_id
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class ReligionAttributeValue extends Model
{
	protected $table = 'religion_attribute_value';

	protected $casts = [
		'attribute_id' => 'int',
        'religion_id' => 'int',
        'type_id' => 'int',
		'value_id' => 'int'
	];

	protected $fillable = [
		'attribute_id',
        'religion_id',
        'type_id',
		'value_id'
	];
    public function attribute(): HasOne
    {
        return $this->hasOne(Attribute::class,'id','attribute_id');
    }
    public function type(): HasOne
    {
        return $this->hasOne(Religion::class,'id','religion_id');
    }
    public function value(): HasOne
    {
        return $this->hasOne(Value::class,'id','value_id');
    }
}
