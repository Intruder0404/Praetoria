<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Familles') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class=" overflow-hidden shadow-xl sm:rounded-lg">
                @livewire('praetorian-family-nav')
            </div>
            <div class=" overflow-hidden shadow-xl sm:rounded-lg">
                @livewire('praetorian-family-content.praetorian-family-content')
            </div>
        </div>
    </div>
</x-app-layout>
