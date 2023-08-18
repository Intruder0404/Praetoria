<nav x-data="{ open: false }" class="bg-violet-700 rounded-l-sm" style="height: 100%">
    <ul class="nav nav-pills nav-stacked flex-column">
        <!-- Navigation Links -->
        <li class="p-3 ">
            <x-nav-link class="text-yellow-500" href="{{ route('admin.familles') }}" :active="request()->routeIs('admin.familles')">
                {{ __('Families') }}
            </x-nav-link>
        </li>
        <li class="p-3">
            <x-nav-link class="text-yellow-500" href="{{ route('admin.guilds') }}" :active="request()->routeIs('admin.guilds')">
                {{ __('Guilde') }}
            </x-nav-link>
        </li>
        <li class="p-3">
            <x-nav-link class="text-yellow-500" href="{{ route('admin.users') }}" :active="request()->routeIs('admin.users')">
                {{ __('Users') }}
            </x-nav-link>
        </li>
        <li class="p-3">
            <x-nav-link class="text-yellow-500" href="{{ route('admin.kingdoms') }}" :active="request()->routeIs('admin.kingdoms')">
                {{ __('Kingdoms') }}
            </x-nav-link>
        </li>
        <li class="p-3">
            <x-nav-link class="text-yellow-500" href="{{ route('admin.religions') }}" :active="request()->routeIs('admin.religions')">
                {{ __('Religions') }}
            </x-nav-link>
        </li>
        <li class="p-3">
            <x-nav-link class="text-yellow-500" href="{{ route('admin.attributes') }}" :active="request()->routeIs('admin.attributes')">
                {{ __('Attributes') }}
            </x-nav-link>
        </li>
    </ul>
</nav>
