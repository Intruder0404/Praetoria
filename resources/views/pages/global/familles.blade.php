<x-app-layout>
    <x-slot name="header">
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            @if (request()->routeIs('familles'))
                <div class="overflow-hidden shadow-xl sm:rounded-lg">
                    <livewire:praetorian-family-nav />
                </div>
            @else
                <div class="overflow-hidden shadow-xl sm:rounded-lg">
                    <livewire:praetorian-family-content.praetorian-family-content />
                </div>
            @endif
        </div>
    </div>
</x-app-layout>
