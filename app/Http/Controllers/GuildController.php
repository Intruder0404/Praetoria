<?php

namespace App\Http\Controllers;

use App\Models\Guild\Guild;
use App\Models\Guild\GuildAttributeValue;

class GuildController
{
    public function getAllGuilds(){
        return Guild::with(['attributeValues.attribute.attribute','attributeValues.type','attributeValues.value'])->get();
    }
}
