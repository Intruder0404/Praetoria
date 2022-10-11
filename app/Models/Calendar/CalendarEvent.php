<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Calendar;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class CalendarEvent
 *
 * @property int $id
 * @property string $title
 * @property Carbon $start
 * @property Carbon $end
 * @property int|null $user_create_id
 * @property int|null $user_update_id
 * @property int|null $user_delete_id
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class CalendarEvent extends Model
{
	protected $table = 'calendar_events';

	protected $casts = [
		'user_create_id' => 'int',
		'user_update_id' => 'int',
		'user_delete_id' => 'int'
	];

	protected $dates = [
		'start',
		'end'
	];

	protected $fillable = [
		'title',
		'start',
		'end',
		'user_create_id',
		'user_update_id',
		'user_delete_id'
	];
}
