<nav x-data="{ open: false }" class="bg-violet-700 mx-auto sm:px-6 lg:px-8 sm:rounded-sm">
    <!-- Primary Navigation Menu -->
        <div class="flex justify-center h-16">
            <div class="flex justify-between">

                <!-- Navigation Links -->
                <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex ">
                    <x-jet-nav-link class="text-4xl text-yellow-500" href="{{ route('news') }}" :active="request()->routeIs('news')">
                        {{ __('News') }}
                    </x-jet-nav-link>
                </div>
                <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link class="text-4xl text-yellow-500" href="{{ route('guilde') }}" :active="request()->routeIs('guilde')">
                        {{ __('Guilde') }}
                    </x-jet-nav-link>
                </div>
                <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link class="text-4xl text-yellow-500" href="{{ route('familles') }}" :active="request()->routeIs('familles')">
                        {{ __('Familles') }}
                    </x-jet-nav-link>
                </div>
                <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex" @if(!Auth::user())style="display: none"@endif>
                    <x-jet-nav-link class="text-4xl text-yellow-500" href="{{ route('events') }}" :active="request()->routeIs('events')">
                        {{ __('Events') }}
                    </x-jet-nav-link>
                </div>
                <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex" @if(!Auth::user())style="display: none"@endif>
                    <x-jet-nav-link class="text-4xl text-yellow-500" href="{{ route('calendar') }}" :active="request()->routeIs('calendar')">
                        {{ __('Calendar') }}
                    </x-jet-nav-link>
                </div>
                <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link class="text-4xl text-yellow-500" href="{{ route('forum') }}" :active="request()->routeIs('forum')">
                        {{ __('Forum') }}
                    </x-jet-nav-link>
                </div>
                <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex" @if(!Auth::user())style="display: none"@endif>
                    <x-jet-nav-link class="text-4xl text-yellow-500" href="{{ route('dashboard') }}" :active="request()->routeIs('dashboard')">
                        {{ __('Dashboard') }}
                    </x-jet-nav-link>
                </div>
                <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex" @if(!Auth::user() || Auth::user()->type !== 2)style="display: none"@endif>
                    <x-jet-nav-link class="text-4xl text-yellow-500" href="{{ route('administration') }}" :active="request()->routeIs('administration')">
                        {{ __('Administration') }}
                    </x-jet-nav-link>
                </div>
            </div>
        </div>
</nav>
