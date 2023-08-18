<?php

namespace App\Http\Livewire\Content\Administration\Modal;

use App\Models\Attribute\Attribute;
use Livewire\Component;

class AddAttributeModal extends Component
{
    public bool $open = false;
    public $attributes;
    public $chosenAttribute;

    protected $listeners = ['triggerAddAttributeModal','cellChange'];

    public function triggerAddAttributeModal()
    {
        $this->open = !$this->open;
    }

    public function cellChange($attribute)
    {
        $this->chosenAttribute = $attribute;
    }

    public function save()
    {
        $this->emit('addAttribute', $this->chosenAttribute);
    }

    public function render()
    {
        return view('content.administration.modal.add-attribute-modal');
    }
}
