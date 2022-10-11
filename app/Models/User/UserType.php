<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\User;

use Illuminate\Database\Eloquent\Model;

/**
 * Class UserType
 *
 * @property int $id
 * @property string|null $name
 *
 * @package App\Models
 */
class UserType extends Model
{
	protected $table = 'user_type';
	public $timestamps = false;

	protected $fillable = [
		'name'
	];
}
