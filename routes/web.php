<?php

use App\Http\Controllers\FamilyController;
use App\Http\Controllers\GuildController;
use App\Http\Controllers\KingdomController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ReligionController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CalendarController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {return view('pages.global.welcome');})->name('welcome');

Route::get('/react', function () {
    return view('react');
});

Route::get('/news', function () {
    return view('pages.global.news');
})->name('news');

Route::get('/familles', function () {
    return view('pages.global.familles');
})->name('familles');

Route::get('/forum', function () {
    return view('pages.global.forum');
})->name('forum');

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::view('/dashboard', 'pages.member.dashboard.dashboard')->name('dashboard');
    Route::get('/events', function () {
        return view('pages.member.events');
    })->name('events');
    Route::prefix('calendar')->group(function(){
        Route::get('/', [CalendarController::class, 'index'])->name('calendar');
        Route::post('/create', [CalendarController::class, 'create'])->name('calendar-create');
        Route::post('/update', [CalendarController::class, 'update'])->name('calendar-update');
        Route::post('/delete', [CalendarController::class, 'destroy'])->name('calendar-destroy');
    });

    Route::prefix('administration')->group(function(){
        Route::view('/', 'pages.member.admin.administration', ['type' => 'Attribute'])->name('administration');
        Route::view('/familles', 'pages.member.admin.administration', ['type' => 'Family'])->name('admin.familles');
        Route::view('/guilds', 'pages.member.admin.administration', ['type' => 'Guild'])->name('admin.guilds');
        Route::view('/users', 'pages.member.admin.administration', ['type' => 'User'])->name('admin.users');
        Route::view('/kingdoms', 'pages.member.admin.administration', ['type' => 'Kingdom'])->name('admin.kingdoms');
        Route::view('/religions', 'pages.member.admin.administration', ['type' => 'Religion'])->name('admin.religions');
        Route::view('/attributes', 'pages.member.admin.administration', ['type' => 'Attribute'])->name('admin.attributes');
    });
});

Route::prefix('familles')->group(function(){
    Route::get('/', function () {
        return view('pages.global.familles');
    })->name('familles');
});

Route::prefix('guild')->group(function(){
    Route::get('/', function () {
        return view('pages.global.guilde');
    })->name('guild');
    Route::get('/description', function () {
        return view('pages.global.guilde');
    })->name('description');
    Route::get('/politicalsystem', function () {
        return view('pages.global.guilde');
    })->name('politicalsystem');
    Route::get('/location', function () {
        return view('pages.global.guilde');
    })->name('location');
});
