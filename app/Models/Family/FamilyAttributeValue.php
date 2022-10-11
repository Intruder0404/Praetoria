<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Family;

use App\Models\Value\Value;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class FamilyAttributeValue
 *
 * @property int $id
 * @property int $family_attribute_id
 * @property int $value_id
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class FamilyAttributeValue extends Model
{
	protected $table = 'family_attribute_value';

	protected $casts = [
        'family_attribute_id' =>'int',
		'family_id' => 'int',
		'value_id' => 'int'
	];

	protected $fillable = [
        'family_attribute_id',
		'family_id',
		'value_id'
	];
    public function familyAttribute(){
        return $this->hasOne(FamilyAttribute::class,'id','family_attribute_id');
    }
    public function family(){
        return $this->hasOne(Family::class);
    }
    public function value(){
        return $this->hasOne(Value::class,'id','value_id');
    }
}
