<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Religion;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class ReligionAttributeValue
 *
 * @property int $id
 * @property int $religion_attribute_id
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
		'religion_attribute_id' => 'int',
        'religion_id' => 'int',
		'value_id' => 'int'
	];

	protected $fillable = [
		'religion_attribute_id',
        'religion_id',
		'value_id'
	];
    public function attribute(){
        return $this->hasOne(ReligionAttribute::class,'id','religion_attribute_id');
    }
    public function type(){
        return $this->hasOne(Religion::class,'id','religion_id');
    }
    public function value(){
        return $this->hasOne(Value::class,'id','value_id');
    }
}
