<?php

namespace App\Http\Livewire\Content\Components\Dropdown;

use Livewire\Component;

class Dropdown extends Component
{
    public $value;
    public $values = null;

    public function mount($values)
    {
        $this->values = $values;
    }

    public function onChange()
    {
        $this->emitUp('cellChange', $this->value);
    }

    public function render()
    {
        return view('content.components.dropdown.dropdown');
    }
}
