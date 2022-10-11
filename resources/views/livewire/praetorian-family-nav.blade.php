<nav x-data="{ open: false }" class="grid grid-cols-2 gap-10 ">
    @foreach($families as $family)
        <a class="card bg-violet-700 hover:bg-violet-500 flex justify-center" href="{{ route(strtolower($family->name)) }}"
             :active="request()->routeIs(strtolower($family->name))">
            @foreach($family->attributeValues as $attributeValues)
                @if($attributeValues->attribute->name === 'Logo')
                    <img class="card-img-top"
                         src="{{ asset('images/logo/'.$attributeValues->value->value) }}"
                         alt="praetorian logo"
                         width="400"/>
                @endif
            @endforeach
        </a>
    @endforeach
</nav>
