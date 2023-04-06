<?php

namespace App\Http\Livewire\Content\Administration\Table;

use Livewire\Component;


class TableRow extends Component
{
    public $rowData;
    public function render()
    {
        return view('content.administration.table.table-row');
    }
}
