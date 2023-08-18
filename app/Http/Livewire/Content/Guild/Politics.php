<?php

namespace App\Http\Livewire\Content\Guild;

use App\Models\Guild\Guild;
use Livewire\Component;

class Politics extends Component
{
    public $guild = null;

    public function mount()
    {
        $this->guild = Guild::find(1);
    }

    public function render()
    {
        return view('content.guild.politics');
    }
}
