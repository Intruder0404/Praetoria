<?php

namespace App\Http\Livewire\Modal;

use Livewire\Component;

class RegisterModal extends Component
{
    public $register = false;

    protected $listeners = ['triggerRegisterModal'];

    public function triggerRegisterModal()
    {
        $this->register = !$this->register;
    }
    public function render()
    {
        return view('livewire.modal.register-modal');
    }
}
