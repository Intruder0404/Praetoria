<?php

namespace App\Http\Livewire\Content\Administration\Form;

use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Livewire\Component;
use Illuminate\Database\Eloquent\Collection;

class AdministrationForm extends Component
{
    public Collection $formObject;

    public function render() : Application|Factory|View
    {
        $this->formObject = User::All();

        return view('livewire.content.administration.form.administration-form');
    }
}
