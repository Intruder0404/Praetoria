<?php

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

Route::get('/', function () {
    return view('pages.global.welcome');
})->name('welcome');

Route::get('/react', function () {
    return view('react');
});

Route::get('/news', function () {
    return view('pages.global.news');
})->name('news');

Route::get('/guilde', function () {
    return view('pages.global.guilde');
})->name('guilde');

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
    Route::get('/dashboard', function () {
        return view('pages.member.dashboard');
    })->name('dashboard');


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
        Route::get('/', function () {
            return view('pages.member.admin.administration');
        })->name('administration');
        Route::get('/familles', function () {
            return view('pages.member.admin.administration');
        })->name('admin.familles');
        Route::get('/guilds', function () {
            return view('pages.member.admin.administration');
        })->name('admin.guilds');
        Route::get('/users', function () {
            return view('pages.member.admin.administration');
        })->name('admin.users');
        Route::get('/attributes', function () {
            return view('pages.member.admin.administration');
        })->name('admin.attributes');
    });
});

Route::prefix('familles')->group(function(){
    Route::get('/', function () {
        return view('pages.global.familles');
    })->name('familles');
    Route::get('/octavii', function () {
        return view('pages.global.familles');
    })->name('octavii');
    Route::get('/scipii', function () {
        return view('pages.global.familles');
    })->name('scipii');
    Route::get('/rapax', function () {
        return view('pages.global.familles');
    })->name('rapax');
    Route::get('/fortii', function () {
        return view('pages.global.familles');
    })->name('fortii');
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
