<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Religion;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Religion
 *
 * @property int $id
 * @property string $name
 * @property boolean $isActive
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class Religion extends Model
{
	protected $table = 'religions';

	protected $fillable = [
		'name',
        'isActive'
	];

    public function attributeValues()
    {
        return $this->hasMany(ReligionAttributeValue::class,'religion_id');
    }
}
