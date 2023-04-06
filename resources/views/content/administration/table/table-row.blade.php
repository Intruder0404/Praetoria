<tr class="border px-8 py-4 bg-violet-700 hover:bg-violet-500 cursor-pointer text-center">
    @foreach(json_decode(json_encode($rowData), true) as $key=>&$column)
        @if($key == 'isActive')
            <livewire:content.administration.table.table-cell key="{{ Str::random() }}" dataType="checkbox"
                                                              cellType="column" :rowId="$rowData['id']"
                                                              :columnName="$key" :cellData="$column"/>
        @elseif($key == 'created_at')
            <livewire:content.administration.table.table-cell key="{{ Str::random() }}" dataType="date"
                                                              cellType="column" :rowId="$rowData['id']"
                                                              :columnName="$key" :cellData="$column"/>
        @elseif($key == 'updated_at')
            <livewire:content.administration.table.table-cell key="{{ Str::random() }}" dataType="date"
                                                              cellType="column" :rowId="$rowData['id']"
                                                              :columnName="$key" :cellData="$column"/>
        @else
            <livewire:content.administration.table.table-cell key="{{ Str::random() }}" dataType="text"
                                                              cellType="column" :rowId="$rowData['id']"
                                                              :columnName="$key" :cellData="$column"/>
        @endif
    @endforeach

    @if($rowData->attributeValues)
        @foreach($rowData->attributeValues as $attributeValue)
            <livewire:content.administration.table.table-cell key="{{ Str::random() }}"
                                                              :dataType="$attributeValue->attribute->attribute->type"
                                                              cellType="attribute" :rowId="$attributeValue->value->id"
                                                              :cellData="$attributeValue->value->value"/>
        @endforeach
    @endif
    <livewire:content.administration.table.table-control-cell key="{{ Str::random() }}" :cellData="$rowData"/>
</tr>
