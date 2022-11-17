<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Kingdom;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Kingdom
 *
 * @property int $id
 * @property string $name
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class Kingdom extends Model
{
	protected $table = 'kingdoms';

	protected $fillable = [
		'name'
	];
}