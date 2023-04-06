<?php

namespace App\Http\Livewire\Content\Administration\Table;

use Illuminate\Database\Eloquent\Collection;
use Livewire\Component;

class TableBody extends Component
{
    public $bodyData;
    public function render()
    {
        return view('content.administration.table.table-body');
    }
}
