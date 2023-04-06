<?php

namespace App\Http\Livewire\Header;

use Livewire\Component;
use Illuminate\Support\Facades\File;

class SiteHeaderImages extends Component
{
    public function render()
    {
        return view('header.site-header-images');
    }
}
