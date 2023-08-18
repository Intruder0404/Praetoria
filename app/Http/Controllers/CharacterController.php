<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CharacterController extends Controller
{
    public function getCharacters(){
        return Character::with(['attributeValues.attribute.attribute', 'attributeValues.type', 'attributeValues.value'])->get();
    }
}
