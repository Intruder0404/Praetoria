<?php

namespace App\Http\Livewire\Modal;

use Livewire\Component;

class LoginModal extends Component
{
    public $logInAccount = false;

    protected $listeners = ['triggerModal'];

    public function triggerModal()
    {
        $this->logInAccount = !$this->logInAccount;
    }
    public function render()
    {
        return view('livewire.modal.login-modal');
    }
}
