<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Kingdom;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class KingdomAttributeValue
 *
 * @property int $id
 * @property int $kingdom_attribute_id
 * @property int $value_id
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class KingdomAttributeValue extends Model
{
	protected $table = 'kingdom_attribute_value';

	protected $casts = [
		'kingdom_attribute_id' => 'int',
        'kingdom_id' => 'int',
		'value_id' => 'int'
	];

	protected $fillable = [
		'kingdom_attribute_id',
        'kingdom_id',
		'value_id'
	];
    public function attribute(){
        return $this->hasOne(KingdomAttribute::class,'id','kingdom_attribute_id');
    }
    public function type(){
        return $this->hasOne(Kingdom::class,'id','kingdom_id');
    }
    public function value(){
        return $this->hasOne(Value::class,'id','value_id');
    }
}
