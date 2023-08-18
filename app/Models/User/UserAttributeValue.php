<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\User;

use App\Models\Attribute\Attribute;
use App\Models\DataType;
use App\Models\Value\Value;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;

/**
 * Class UserAttributeValue
 *
 * @property int $id
 * @property int $user_attribute_id
 * @property int $value_id
 * @property int $type_id
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class UserAttributeValue extends Model
{
    protected $table = 'user_attribute_value';

    protected $casts = [
        'attribute_id' => 'int',
        'user_id' => 'int',
        'type_id' => 'int',
        'value_id' => 'int'
    ];

    protected $fillable = [
        'attribute_id',
        'user_id',
        'type_id',
        'value_id'
    ];
    public function attribute(): HasOne
    {
        return $this->hasOne(Attribute::class,'id','attribute_id');
    }
    public function type(): HasOne
    {
        return $this->hasOne(DataType::class,'id','type_id');
    }
    public function value()
    {
        return $this->hasOne(Value::class,'id','value_id');
    }
}
