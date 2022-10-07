<nav x-data="{ open: false }" class="bg-violet-700 rounded-l-sm" style="height: 100%">
        <ul class="nav nav-pills nav-stacked">
            <!-- Navigation Links -->
            <li class="p-3 ">
                <x-jet-nav-link class="text-yellow-500" href="{{ route('description') }}" :active="request()->routeIs('description')">
                    {{ __('Qui Some nous?') }}
                </x-jet-nav-link>
            </li>
            <li class="p-3">
                <x-jet-nav-link class="text-yellow-500" href="{{ route('politicalsystem') }}" :active="request()->routeIs('politicalsystem')">
                    {{ __('Systeme Politique') }}
                </x-jet-nav-link>
            </li>
            <li class="p-3">
                <x-jet-nav-link class="text-yellow-500" href="{{ route('location') }}" :active="request()->routeIs('location')">
                    {{ __('Location') }}
                </x-jet-nav-link>
            </li>
        </ul>
</nav>