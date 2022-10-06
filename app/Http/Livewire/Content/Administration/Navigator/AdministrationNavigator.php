<?php

namespace App\Http\Livewire\Content\Administration\Navigator;

use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Livewire\Component;

class AdministrationNavigator extends Component
{
    public function render(): View|Factory|Application
    {
        return view('livewire.Content.Administration.Navigator.administration-navigator');
    }
}
