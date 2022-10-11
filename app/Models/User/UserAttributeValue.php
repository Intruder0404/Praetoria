<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\User;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class UserAttributeValue
 *
 * @property int $id
 * @property int $user_attribute_id
 * @property int $value_id
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class UserAttributeValue extends Model
{
    protected $table = 'user_attribute_value';

    protected $casts = [
        'user_attribute_id' => 'int',
        'value_id' => 'int'
    ];

    protected $fillable = [
        'user_attribute_id',
        'value_id'
    ];

    public function value()
    {
        return $this->hasOne('App\Models\Value\Value', 'id', 'value_id');
    }
}
