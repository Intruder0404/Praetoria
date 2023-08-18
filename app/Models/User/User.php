<?php

namespace App\Models\User;

use App\Models\Character\Character;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Fortify\TwoFactorAuthenticatable;
use Laravel\Jetstream\HasProfilePhoto;
use Laravel\Sanctum\HasApiTokens;

/**
 * Class User
 *
 * @property int $id
 * @property string $username
 * @property string $email
 * @property string $firstName
 * @property string $lastName
 * @property string $password
 * @property boolean $isActive
 * @property int $type
 * @property int $rank
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class User extends Authenticatable
{
    use HasApiTokens;
    use HasFactory;
    use HasProfilePhoto;
    use Notifiable;
    use TwoFactorAuthenticatable;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'username',
        'first_name',
        'last_name',
        'email',
        'password',
        'isActive',
        'type',
        'rank'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
        'two_factor_recovery_codes',
        'two_factor_secret',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'isActive' => 'boolean',
    ];
    /**
     * The accessors to append to the model's array form.
     *
     * @var array
     */
    protected $appends = [
        //'profile_photo_url',
    ];

    public function attributeValues()
    {
        return $this->hasMany(UserAttributeValue::class,'user_id');
    }
    public function attribute()
    {
        return $this->hasMany(UserAttribute::class,'user_id');
    }
    public function userType()
    {
        return $this->hasOne(UserType::class,'id','type');
    }
    public function userRank()
    {
        return $this->hasOne(Rank::class,'id','rank');
    }
    public function characters()
    {
        return $this->hasMany(Character::class,'user_id');
    }
}

