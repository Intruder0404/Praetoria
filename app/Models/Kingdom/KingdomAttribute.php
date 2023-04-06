<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Kingdom;

use App\Models\Attribute\Attribute;
use Illuminate\Database\Eloquent\Model;

/**
 * Class KingdomAttribute
 *
 * @property int $id
 * @property int $kingdom_id
 * @property int $attribute_id
 * @property int $value_id
 *
 * @package App\Models
 */
class KingdomAttribute extends Model
{
	protected $table = 'kingdom_attributes';
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
