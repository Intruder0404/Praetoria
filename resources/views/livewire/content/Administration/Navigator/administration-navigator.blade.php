<nav x-data="{ open: false }" class="bg-violet-700 rounded-l-sm" style="height: 100%">
    <ul class="nav nav-pills nav-stacked">
        <!-- Navigation Links -->
        <li class="p-3 ">
            <x-jet-nav-link class="text-yellow-500" href="{{ route('admin.familles') }}" :active="request()->routeIs('admin.familles')">
                {{ __('Families') }}
            </x-jet-nav-link>
        </li>
        <li class="p-3">
            <x-jet-nav-link class="text-yellow-500" href="{{ route('admin.guilds') }}" :active="request()->routeIs('admin.guilds')">
                {{ __('Guilde') }}
            </x-jet-nav-link>
        </li>
        <li class="p-3">
            <x-jet-nav-link class="text-yellow-500" href="{{ route('admin.users') }}" :active="request()->routeIs('admin.users')">
                {{ __('Users') }}
            </x-jet-nav-link>
        </li>
        <li class="p-3">
            <x-jet-nav-link class="text-yellow-500" href="{{ route('admin.kingdoms') }}" :active="request()->routeIs('admin.kingdoms')">
                {{ __('Kingdoms') }}
            </x-jet-nav-link>
        </li>
        <li class="p-3">
            <x-jet-nav-link class="text-yellow-500" href="{{ route('admin.religions') }}" :active="request()->routeIs('admin.religions')">
                {{ __('Religions') }}
            </x-jet-nav-link>
        </li>
        <li class="p-3">
            <x-jet-nav-link class="text-yellow-500" href="{{ route('admin.attributes') }}" :active="request()->routeIs('admin.attributes')">
                {{ __('Attributes') }}
            </x-jet-nav-link>
        </li>
    </ul>
</nav>
