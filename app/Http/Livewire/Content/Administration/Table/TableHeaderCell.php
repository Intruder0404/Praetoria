<?php

namespace App\Http\Livewire\Content\Administration\Table;

use Illuminate\Database\Eloquent\Collection;
use Livewire\Component;

class TableHeaderCell extends Component
{
    public $cellData;
    public function render()
    {
        return view('content.administration.table.table-header-cell');
    }
}
