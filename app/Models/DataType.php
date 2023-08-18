<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Value
 *
 * @property int $id
 * @property string $type
 *
 * @package App\Models
 */
class DataType extends Model
{
    protected $table = 'data_type';

    protected $fillable = [
        'type'
    ];
}
