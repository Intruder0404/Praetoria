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
    public function mount()
    {
        $this->families = Family::all();
    }
    public function render() : Application|Factory|View
    {
        return view('praetorian-family-nav');
    }
}
