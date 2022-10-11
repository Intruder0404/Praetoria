<?php

namespace App\Http\Livewire\Content\Administration\Modal;

use App\Models\Attribute\Attribute;
use Livewire\Component;

class AddAttributeModal extends Component
{
    public $open = false;
    public $attributes;

    protected $listeners = ['triggerAddAttributeModal'];

    public function mount(){
        $this->attributes = Attribute::all();
    }

    public function triggerAddAttributeModal()
    {
        $this->open = !$this->open;
    }
    public function render()
    {
        return view('livewire.content.administration.modal.add-attribute-modal');
    }
}
