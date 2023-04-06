<x-dialog-modal wire:model="logInAccount">
    <x-slot name="title">
        Log In
    </x-slot>

    <x-slot name="content">
        <x-validation-errors class="mb-4" />

        @if (session('status'))
            <div class="mb-4 font-medium text-sm text-green-600">
                {{ session('status') }}
            </div>
        @endif

        <form method="POST" action="{{ route('login') }}">
            @csrf

            <div>
                <x-label for="email" value="{{ __('Email') }}" />
                <x-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')"
                    required autofocus />
            </div>

            <div class="mt-4">
                <x-label for="password" value="{{ __('Password') }}" />
                <x-input id="password" class="block mt-1 w-full" type="password" name="password" required
                    autocomplete="current-password" />
            </div>

            <div class="block mt-4">
                <label for="remember_me" class="flex items-center">
                    <x-checkbox id="remember_me" name="remember" />
                    <span class="ml-2 text-sm text-gray-600">{{ __('Remember me') }}</span>
                </label>
            </div>

            <div class="flex items-center justify-end mt-4">
                @if (Route::has('password.request'))
                    <a class="underline text-sm text-gray-600 hover:text-gray-900"
                        href="{{ route('password.request') }}">
                        {{ __('Forgot your password?') }}
                    </a>
                @endif
                <x-secondary-button onclick="submit()" wire:click="$emit('triggerModal')"
                    wire:loading.attr="disabled">
                    {{ __('Log in') }}
                </x-secondary-button>

                <x-danger-button class="ml-2" wire:click="$emit('triggerModal')" wire:loading.attr="disabled">
                    {{ __('Close') }}
                </x-danger-button>
            </div>
        </form>
    </x-slot>
    <x-slot name="footer">
    </x-slot>
</x-dialog-modal>