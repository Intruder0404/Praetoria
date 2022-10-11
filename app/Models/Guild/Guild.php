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
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class Guild extends Model
{
	protected $table = 'guilds';

	protected $fillable = [
		'name'
	];

    public function attributes()
    {
        return $this->hasMany(GuildAttribute::class,'guild_id');
    }
}
