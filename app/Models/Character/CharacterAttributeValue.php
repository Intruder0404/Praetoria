<?php

namespace App\Models\Character;

use App\Models\Attribute\Attribute;
use App\Models\DataType;
use App\Models\Value\Value;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;

/**
 * Class UserAttributeValue
 *
 * @property int $id
 * @property int $attribute_id
 * @property int $value_id
 * @property int $type_id
 *
 * @package App\Models
 */
class CharacterAttributeValue extends Model
{
    protected $table = 'character_attribute_value';

    protected $casts = [
        'attribute_id' => 'int',
        'character_id' => 'int',
        'type_id' => 'int',
        'value_id' => 'int'
    ];

    protected $fillable = [
        'attribute_id',
        'character_id',
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
    public function value(): HasOne
    {
        return $this->hasOne(Value::class,'id','value_id');
    }
}
