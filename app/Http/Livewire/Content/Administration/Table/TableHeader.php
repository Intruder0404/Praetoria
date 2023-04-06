<?php

namespace App\Http\Livewire\Content\Administration\Table;

use Illuminate\Database\Eloquent\Collection;
use Livewire\Component;

class TableHeader extends Component
{
    public Collection $headerData;
    public function render()
    {
        return view('content.administration.table.table-header');
    }
}
