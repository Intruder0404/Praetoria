<?php

use App\Http\Controllers\AttributeController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\FamilyController;
use App\Http\Controllers\GuildController;
use App\Http\Controllers\KingdomController;
use App\Http\Controllers\OptionController;
use App\Http\Controllers\ReligionController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Laravel\Socialite\Facades\Socialite;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('/auth/register', [AuthController::class, 'register']);

Route::post('/auth/login', [AuthController::class, 'login'])->name('login');

Route::get('/auth/redirect', [AuthController::class, 'azureRedirect']);

Route::post('/auth/callback', [AuthController::class, 'azureLogin'])->name('azureLogin');

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/options', [OptionController::class, 'getAllOptions'])->name('admin.options');
Route::middleware('auth:sanctum')->group(function () {
    Route::post('/auth/logout', [AuthController::class, 'logout'])->name('logout');
    Route::get('/religions', [ReligionController::class, 'getAllReligions'])->name('admin.religions');
    Route::get('/guilds', [GuildController::class, 'getAllGuilds'])->name('admin.guilds');
    Route::get('/kingdoms', [KingdomController::class, 'getAllKingdoms'])->name('admin.kingdoms');
    Route::get('/families', [FamilyController::class, 'getAllFamilies'])->name('admin.families');
    Route::get('/users', [UserController::class, 'getAllUsers'])->name('admin.users');
    Route::post('/updateUser', [UserController::class, 'updateUser'])->name('admin.updateUser');
});
