<?php

namespace App\Http\Livewire;

use App\Models\Family\Family;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Database\Eloquent\Collection;
use Livewire\Component;

class PraetorianFamilyNav extends Component
{
    public Collection $families;

    public function render() : Application|Factory|View
    {
        $this->families = Family::all();

        return view('livewire.praetorian-family-nav');
    }
}
