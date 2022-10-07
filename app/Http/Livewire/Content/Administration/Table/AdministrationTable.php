<?php

namespace App\Http\Livewire\Content\Administration\Table;

use App\Models\Attribute;
use App\Models\Kingdom;
use App\Models\Religion;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Routing\Route;
use Livewire\Component;
use App\Models\User;
use App\Models\Guild;
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
            case "admin.guilds":
                $this->formObject = Guild::All();
                break;
            case "admin.familles":
                $this->formObject = Family::all();
                break;
            case "admin.religions":
                $this->formObject = Religion::all();
                break;
            case "admin.kingdoms":
                $this->formObject = Kingdom::all();
                break;
            case "admin.attributes":
                $this->formObject = Attribute::all();
                break;
            default:
                $this->formObject = Attribute::all();
        }

        return view('livewire.content.administration.table.administration-table');
    }
}
