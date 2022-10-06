<x-app-layout>
    <x-slot name="header">
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto flex  bg-violet-500 sm:rounded-lg min-h-screen">
            <div class="rounded-l-lg">
                @livewire('content.administration.navigator.administration-navigator')
            </div>

            @livewire('content.administration.table.administration-table')
        </div>
    </div>
</x-app-layout>
