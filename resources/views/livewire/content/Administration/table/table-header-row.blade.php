<tr>
    @foreach($rowData as $object)
        @foreach(json_decode(json_encode($object), true) as $key=>$column)
            <livewire:content.administration.table.table-header-cell
                scope="col" key="{{ Str::random() }}" :cellData="$key"/>
        @endforeach
        @if($object->attributeValues)
            @foreach($object->attributeValues as $attributeValue)
                <livewire:content.administration.table.table-header-cell
                    scope="col" key="{{ Str::random() }}" :cellData="$attributeValue->attribute->attribute->name"/>
            @endforeach
        @endif
        @break;
    @endforeach
        <livewire:content.administration.table.table-header-control-cell
            scope="col" key="{{ Str::random() }}"/>
</tr>
