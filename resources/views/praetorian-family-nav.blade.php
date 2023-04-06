<div x-data="{ open: false }" class="grid grid-cols-2 gap-10 ">
    @foreach($families as $family)
        <div class="card bg-violet-700 hover:bg-violet-500 flex justify-center"
             :active="request()->routeIs(strtolower($family->name))">
            @foreach($family->attributeValues as $attributeValue)
                @if($attributeValue->attribute->attribute->id == 2)
                    <img class="card-img-top"
                         src="{{ asset('images/logo/'.$attributeValue->value->value) }}"
                         alt="praetorian logo"
                         width="400"/>
                @endif
            @endforeach
        </div>
    @endforeach
</div>
