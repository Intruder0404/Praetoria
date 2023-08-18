<?php

namespace App\Http\Controllers;

use App\Models\Religion\Religion;

class ReligionController
{
    public function getAllReligions(){
        return Religion::with(['attributeValues.attribute.attribute','attributeValues.type','attributeValues.value'])->get();
    }
}
