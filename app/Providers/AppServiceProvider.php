<?php

namespace App\Providers;

use App\Models\Attribute\Attribute;
use App\Models\Family\Family;
use App\Models\Guild\Guild;
use App\Models\Kingdom\Kingdom;
use App\Models\Religion\Religion;
use App\Models\User\User;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->share('userOptions', User::all());
        view()->share('familyOptions', Family::all());
        view()->share('guildOptions', Guild::all());
        view()->share('religionOptions', Religion::all());
        view()->share('kingdomOptions', Kingdom::all());
        view()->share('attributeOptions', Attribute::all());
    }
}
