<td class="hover:bg-violet-400" wire:dblclick="switchEditable">
    @switch($dataType)
        @case('checkbox')
            @if($isEditable)
                <Input type="checkbox" wire:model="cellData" />
                <button wire:click="saveValue">save</button>
            @else
                <Input type="checkbox" wire:model="cellData"  disabled/>
            @endif
            @break
        @case('text')
            @if($isEditable)
                <Input type="text" wire:model="cellData" />
                <button wire:click="saveValue">save</button>
            @else
                {{$cellData}}
            @endif
            @break
        @case('date')
            @if($isEditable)
                <Input type="date" wire:model="cellData" />
                <button class="bg-violet-700" wire:click="saveValue">save</button>
            @else
                {{$cellData}}
            @endif
            @break
        @case('kingdom')
            @if($isEditable)
                <livewire:content.components.dropdown.dropdown :values={{\App\Models\Kingdom\Kingdom::all()}}/>
                <button class="bg-violet-700" wire:click="saveValue">save</button>
            @else
                {{$cellData}}
            @endif
            @break
        @default
            {{$dataType}}
    @endswitch

</td>
