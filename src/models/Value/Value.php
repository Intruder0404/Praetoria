<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Value;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Value
 *
 * @property int $id
 * @property string $value
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class Value extends Model
{
	protected $table = 'values';

	protected $fillable = [
		'value'
	];
}
