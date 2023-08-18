<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12" style="width:100%">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <p>
                    Profile du joueur {{Auth::user()->name}}
                </p>
                @foreach(Auth::user()->attributeValues as $attributeValue)
                    @if($attributeValue->attribute->attribute->name == "Religion")
                        <label>religion</label><livewire:content.components.dropdown.dropdown :value="$attributeValue->value->value" :values="$religionOptions"/>
                    @endif
                @endforeach
                @foreach(Auth::user()->attributeValues as $attributeValue)
                    @if($attributeValue->attribute->attribute->name == "Family")
                        <label>guild</label><livewire:content.components.dropdown.dropdown :value="$attributeValue->value->value" :values="$familyOptions"/>
                    @endif
                @endforeach
            </div>
        </div>
    </div>
</x-app-layout>
