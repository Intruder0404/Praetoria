<?php

namespace App\Http\Livewire\Content\Administration\Table;

use Livewire\Component;

class TableControlCell extends Component
{
    public $cellData;
    public function render()
    {
        return view('content.administration.table.table-control-cell');
    }
}
