<div style="width:100%">
    @foreach($guild->attributeValues as $attributeValue)
        @if($attributeValue->attribute->attribute->name == "Description")
            {{$attributeValue->value->value}}
        @endif
    @endforeach
</div>
