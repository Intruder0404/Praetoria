<?php

namespace App\Http\Livewire\Content\Components\Dropdown;

use Livewire\Component;

class Dropdown extends Component
{
    public $value;
    public $values;

    public function mount($values)
    {
        $this->values = $values;
    }

    public function render()
    {
        return view('livewire.content.components.dropdown.dropdown');
    }
}
