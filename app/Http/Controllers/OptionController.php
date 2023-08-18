<?php

namespace App\Http\Controllers;

use App\Models\Attribute\Attribute;
use App\Models\Character\Character;
use App\Models\DataType;
use App\Models\Family\Family;
use App\Models\Guild\Guild;
use App\Models\Kingdom\Kingdom;
use App\Models\Religion\Religion;
use App\Models\User\Rank;
use App\Models\User\User;
use App\Models\User\UserType;

class OptionController
{
    public function __construct(
        protected UserController $users,
    ) {
    }
    public function getAllOptions(): array
    {
        return [
            'religions'=>Religion::with(['attributeValues.attribute','attributeValues.type','attributeValues.value'])->get(),
            'kingdoms'=>Kingdom::with(['attributeValues.attribute','attributeValues.type','attributeValues.value'])->get(),
            'guilds'=>Guild::with(['attributeValues.attribute','attributeValues.type','attributeValues.value'])->get(),
            'families'=>Family::with(['attributeValues.attribute','attributeValues.type','attributeValues.value'])->get(),
            'users'=>$this->users->getAllUsers(),
            'userTypes'=>UserType::all(),
            'attributes'=>Attribute::all(),
            'ranks'=>Rank::all(),
            'characters'=>Character::all(),
            'data_type'=>DataType::all(),
        ];
    }
}
