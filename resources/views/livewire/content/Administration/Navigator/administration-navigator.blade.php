<nav x-data="{ open: false }" class="bg-violet-700 rounded-l-sm" style="height: 100%">
    <ul class="nav nav-pills nav-stacked">
        <!-- Navigation Links -->
        <li class="p-3 ">
            <x-jet-nav-link class="text-yellow-500" href="{{ route('admin.familles') }}" :active="request()->routeIs('description')">
                {{ __('Families') }}
            </x-jet-nav-link>
        </li>
        <li class="p-3">
            <x-jet-nav-link class="text-yellow-500" href="{{ route('admin.guilds') }}" :active="request()->routeIs('location')">
                {{ __('Guilde') }}
            </x-jet-nav-link>
        </li>
        <li class="p-3">
            <x-jet-nav-link class="text-yellow-500" href="{{ route('admin.users') }}" :active="request()->routeIs('politicalsystem')">
                {{ __('Users') }}
            </x-jet-nav-link>
        </li>
        <li class="p-3">
            <x-jet-nav-link class="text-yellow-500" href="{{ route('admin.attributes') }}" :active="request()->routeIs('politicalsystem')">
                {{ __('Attributes') }}
            </x-jet-nav-link>
        </li>
    </ul>
</nav>
