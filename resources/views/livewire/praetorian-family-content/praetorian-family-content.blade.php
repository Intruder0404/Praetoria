<div class="shrink-0 flex items-center justify-center">
    @if (request()->routeIs('octavii'))
    <img src="{{ asset('images/logo/octavii-1.jpg') }}" alt="octavii logo" width="500">
    @elseif (request()->routeIs('scipii'))
    <img src="{{ asset('images/logo/scipii-1.jpg') }}" alt="scipii logo" width="500">
    @elseif (request()->routeIs('rapax'))
    <img src="{{ asset('images/logo/rapax-1.jpg') }}" alt="rapax logo" width="500">
    @elseif (request()->routeIs('fortii'))
    <img src="{{ asset('images/logo/fortii-1.jpg') }}" alt="fortii logo" width="500">
    @else
    <img src="{{ asset('images/logo/praetoria-1.jpg') }}" alt="praetorian logo" width="500">
    @endif
</div>
