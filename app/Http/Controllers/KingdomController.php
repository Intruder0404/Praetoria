<?php

namespace App\Http\Controllers;

use App\Models\Kingdom\Kingdom;

class KingdomController
{
    public function getAllKingdoms(){
        return Kingdom::with(['attributeValues.attribute.attribute','attributeValues.type','attributeValues.value'])->get();
    }
}
