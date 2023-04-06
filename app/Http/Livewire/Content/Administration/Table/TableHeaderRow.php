<?php

namespace App\Http\Livewire\Content\Administration\Table;

use Illuminate\Database\Eloquent\Collection;
use Livewire\Component;

class TableHeaderRow extends Component
{
    public Collection $rowData;
    public function render()
    {
        return view('content.administration.table.table-header-row');
    }
}
