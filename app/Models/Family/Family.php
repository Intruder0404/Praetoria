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
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class Family extends Model
{
    protected $table = 'families';

    protected $fillable = [
        'name'
    ];

    public function attributeValues()
    {
        return $this->hasMany(FamilyAttribute::class);
    }

    public function attributeFamily()
    {
        return $this->belongsTo(FamilyAttribute::class,'family_id');
    }
}
