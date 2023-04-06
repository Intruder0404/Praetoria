<?php

namespace App\Http\Livewire\Content\Administration\Table\Dropdown;

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
        $this->emit('setCellData', $this->value);
    }
    public function render()
    {
        return view('content.administration.table.dropdown.dropdown');
    }
}
