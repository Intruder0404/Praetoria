<?php

namespace App\Http\Livewire\Content\Guild\Navigator;

use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Livewire\Component;

class GuildNavigator extends Component
{
    public function render(): View|Factory|Application
    {
        return view('content.guild.navigator.guild-navigator');
    }
}
