<?php

namespace App\Models\Character;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Character
 *
 * @property int $id
 * @property int $user_id
 * @property string $name
 *
 * @package App\Models
 */
class Character extends Model
{
    protected $table = 'character';

    protected $fillable = [
        'name',
        'user_id',
        'isActive'
    ];
    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'isActive' => 'boolean',
    ];
    public function attributeValues()
    {
        return $this->hasMany(CharacterAttributeValue::class,'user_id');
    }
    public function attribute()
    {
        return $this->hasMany(CharacterAttribute::class,'user_id');
    }
}
