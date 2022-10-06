<nav x-data="{ open: false }" class="bg-violet-900 border-b">
    <!-- Primary Navigation Menu -->
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-16">
            <div class="flex">

                <div :class="{ 'block': open, 'hidden': !open }" class="hidden sm:hidden">
                    <div class="pt-2 pb-3 space-y-1">
                        <x-jet-responsive-nav-link href="{{ route('news') }}" :active="request()->routeIs('news')">
                            {{ __('News') }}
                        </x-jet-responsive-nav-link>
                    </div>
                    <div class="pt-2 pb-3 space-y-1">
                        <x-jet-responsive-nav-link href="{{ route('guilde') }}" :active="request()->routeIs('guilde')">
                            {{ __('Guilde') }}
                        </x-jet-responsive-nav-link>
                    </div>
                    <div class="pt-2 pb-3 space-y-1">
                        <x-jet-responsive-nav-link href="{{ route('familles') }}" :active="request()->routeIs('familles')">
                            {{ __('Familles') }}
                        </x-jet-responsive-nav-link>
                    </div>
                    <div class="pt-2 pb-3 space-y-1">
                        <x-jet-responsive-nav-link href="{{ route('events') }}" :active="request()->routeIs('events')">
                            {{ __('Events') }}
                        </x-jet-responsive-nav-link>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>
