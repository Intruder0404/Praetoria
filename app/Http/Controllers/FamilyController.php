<?php

namespace App\Http\Controllers;

use App\Models\Family\Family;

class FamilyController
{
    public function getAllFamilies(){
        return Family::with(['attributeValues.attribute.attribute','attributeValues.type','attributeValues.value'])->get();
    }
}
