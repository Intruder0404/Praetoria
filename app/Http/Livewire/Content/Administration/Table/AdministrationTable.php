<?php

namespace App\Http\Livewire\Content\Administration\Table;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Routing\Route;
use Livewire\Component;
use App\Models\User;
use App\Models\Guilde;
use App\Models\Family;

class AdministrationTable extends Component
{
    public Collection $formObject;
    public bool $editable = false;

    public function render()
    {
        switch (request()->route()->getName()) {
            case "admin.users":
                $this->formObject = User::All();
                break;
            case "admin.guilde":
                $this->formObject = Guilde::All();
                break;
            case "admin.familles":
                $this->formObject = Family::all();
                break;
            default:
                $this->formObject = Family::all();
        }

        return view('livewire.content.administration.table.administration-table');
    }
}
