<tbody>
@foreach($bodyData as $object)
    <livewire:content.administration.table.table-row key="{{ Str::random() }}" :rowData="$object"/>
@endforeach
</tbody>
