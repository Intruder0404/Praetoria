<div class="container horizontal-scrollable" style="height:100%;overflow: auto;">
    <div class="inline-flex">
        <button class="bg-violet-700 hover:bg-violet-400 font-bold py-2 px-4 rounded-l" wire:click="addRow">Add Row
        </button>
        <button class="bg-violet-700 hover:bg-violet-400 font-bold py-2 px-4 rounded-r"
                wire:click="$emit('triggerAddAttributeModal')">Add Column
        </button>
    </div>
    <table class="shadow-lg bg-violet-500 border-separate table-responsive-md table-striped " style="overflow: auto;">
        <thead class="border-separate">
        <tr>
            @foreach($formHeaderObject as $object)
                @foreach(json_decode(json_encode($object), true) as $key=>$column)
                    <th class="bg-violet-900 text-left px-8 py-4" data-field="name" data-editable="true"
                        scope="col">{{$key}}</th>
                @endforeach
                @foreach($object->familyAttributeValue as $familyAttributeValue)
                    <th class="bg-violet-900 text-left px-8 py-4" data-field="name" data-editable="true"
                        scope="col">{{$familyAttributeValue->familyAttribute->attribute->name}}</th>
                @endforeach
                @break;
            @endforeach
        </tr>
        </thead>
        <tbody>
        @foreach($formValueObject as $object)
            <tr class="border px-8 py-4 bg-violet-700 hover:bg-violet-500 cursor-pointer text-center">
                @foreach(json_decode(json_encode($object), true) as $key=>$column)
                    <td class="hover:bg-violet-400">{{$column}}</td>
                @endforeach
                @foreach($object->familyAttributeValue as $familyAttributeValue)
                    <td class="hover:bg-violet-400">{{$familyAttributeValue->value->value}}</td>
                @endforeach
            </tr>
        @endforeach
        <tbody>
    </table>
</div>

