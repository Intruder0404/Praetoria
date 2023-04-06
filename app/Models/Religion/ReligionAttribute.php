<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Religion;

use App\Models\Attribute\Attribute;
use Illuminate\Database\Eloquent\Model;

/**
 * Class ReligionAttribute
 *
 * @property int $id
 * @property int $religion_id
 * @property int $attribute_id
 * @property int $value_id
 *
 * @package App\Models
 */
class ReligionAttribute extends Model
{
	protected $table = 'religion_attributes';
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
