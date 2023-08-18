<?php

namespace App\Http\Controllers;

use App\Models\Attribute\Attribute;

class AttributeController
{
    public function getAllAttributes(){
        return Attribute::all();
    }
}
