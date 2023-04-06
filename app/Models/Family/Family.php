<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Family;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Family
 *
 * @property int $id
 * @property string $name
 * @property boolean $isActive
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class Family extends Model
{
    protected $table = 'families';

    protected $fillable = [
        'name',
        'isActive'
    ];

    public function attributeValues()
    {
        return $this->hasMany(FamilyAttributeValue::class);
    }

}
