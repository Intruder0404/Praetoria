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
                    <livewire:content.guild.description key="{{ Str::random() }}"/>
                @elseif (request()->routeIs('description'))
                    <livewire:content.guild.description key="{{ Str::random() }}"/>
                @elseif (request()->routeIs('politicalsystem'))
                    <livewire:content.guild.description key="{{ Str::random() }}"/>
                @elseif (request()->routeIs('location'))
                    <livewire:content.guild.description key="{{ Str::random() }}"/>
                @endif
            </div>
        </div>
    </div>
</x-app-layout>
