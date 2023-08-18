<?php

namespace App\Models\Character;

use App\Models\Attribute\Attribute;
use Illuminate\Database\Eloquent\Model;

/**
 * Class CharacterAttribute
 *
 * @property int $id
 * @property int $user_id
 * @property int $attribute_id
 * @property int $value_id
 *
 * @package App\Models
 */
class CharacterAttribute extends Model
{
    protected $table = 'character_attributes';
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
