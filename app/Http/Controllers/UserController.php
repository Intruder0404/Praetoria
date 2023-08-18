<?php

namespace App\Http\Controllers;

use App\Models\User\User;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class UserController extends BaseController
{
    public function getUserByIdAndChildren($id, $children): User
    {
        $user = User::find($id)::with($children)->first();
        foreach ($user->attributeValues as &$attributeValue) {
            if ($attributeValue->type->type === 'integer') {
                $attributeValue->value->value = (int)$attributeValue->value->value;
            }
        }
        return $user;
    }

    public function getAllUsers(): Collection|array
    {
        $users = User::with(['characters','userRank', 'userType', 'attributeValues.attribute', 'attributeValues.type', 'attributeValues.value'])->get();
        foreach ($users as &$user) {
            foreach ($user->attributeValues as &$attributeValue) {
                if ($attributeValue->type->type === 'integer') {
                    $attributeValue->value->value = (int)$attributeValue->value->value;
                }
            }
        }
        return $users;
    }

    public function updateUser(Request $request): JsonResponse
    {
        try {
            $user = User::with(['characters','userRank', 'userType', 'attributeValues.attribute', 'attributeValues.type', 'attributeValues.value'])->find($request['user']['id']);
            foreach ($request['user'] as $key => $property) {
                if ($key === 'user_type')
                    continue;
                else if ($key === 'attribute_values')
                    continue;
                else if ($key === 'characters')
                    continue;
                else if ($key === 'user_rank')
                    continue;
                else
                    $user[$key] = $property;
            }
            $user->save();

            $user = User::with(['characters','userRank', 'userType', 'attributeValues.attribute', 'attributeValues.type', 'attributeValues.value'])->find($request['user']['id']);
            foreach ($user->attributeValues as &$attributeValue) {
                if ($attributeValue->type->type === 'integer') {
                    $attributeValue->value->value = (int)$attributeValue->value->value;
                }
            }
            return $this->sendResponse($user, 'User saved.');
        } catch (e) {
            return $this->sendError('User save error', ['error' => 'User save error']);
        }
    }
}
