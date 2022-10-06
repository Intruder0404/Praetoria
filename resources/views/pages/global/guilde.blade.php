<x-app-layout>
    <x-slot name="header">
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto flex  bg-violet-500 sm:rounded-lg min-h-screen">
            <div class="rounded-l-lg">
                @livewire('content.guild.navigator.guild-navigator')
            </div>

            <div class="shrink-0 flex justify-center sm:rounded-lg">
                @if (request()->routeIs('/'))
                    @include('pages.global.guild.description')
                @elseif (request()->routeIs('description'))
                    @include('pages.global.guild.description')
                @elseif (request()->routeIs('politicalsystem'))
                    @include('pages.global.guild.politicalsystem')
                @elseif (request()->routeIs('location'))
                    @include('pages.global.guild.location')
                @endif
            </div>
        </div>
    </div>
</x-app-layout>
