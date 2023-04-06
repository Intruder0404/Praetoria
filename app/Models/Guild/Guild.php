<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Guild;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Guild
 *
 * @property int $id
 * @property string $name
 * @property boolean $isActive
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class Guild extends Model
{
	protected $table = 'guilds';

	protected $fillable = [
		'name',
        'isActive'
	];

    public function attributeValues()
    {
        return $this->hasMany(GuildAttributeValue::class,'guild_id');
    }
}
