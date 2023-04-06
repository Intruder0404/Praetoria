<?php

namespace App\Http\Livewire\Content\Administration\Table;

use Livewire\Component;

class TableFooterCell extends Component
{
    public $cellData;

    public function render()
    {
        return view('content.administration.table.table-footer-cell');
    }
}
