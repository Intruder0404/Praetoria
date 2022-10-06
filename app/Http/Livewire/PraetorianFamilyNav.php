<?php

namespace App\Http\Livewire;

use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Livewire\Component;
use Illuminate\Database\Eloquent\Collection;
use App\Models\Family;

class PraetorianFamilyNav extends Component
{
    public Collection $families;

    public function render() : Application|Factory|View
    {
        $this->families = Family::all();

        return view('livewire.praetorian-family-nav');
    }
}
