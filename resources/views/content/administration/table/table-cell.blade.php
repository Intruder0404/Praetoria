<td class="hover:bg-violet-400" wire:dblclick="switchEditable">
    @switch($dataType)
        @case('checkbox')
            @if($isEditable)
                <input type="checkbox" wire:model="cellData" />
                <button wire:click="saveValue">save</button>
            @else
                <input type="checkbox" wire:model="cellData"  disabled/>
            @endif
            @break
        @case('text')
            @if($isEditable)
                <input type="text" wire:model="cellData" />
                <button wire:click="saveValue">save</button>
            @else
                {{$cellData}}
            @endif
            @break
        @case('textArea')
            @if($isEditable)
                <div>
                <textarea style="border: none; width: 100%; height: 100%;" wire:model="cellData" />
                <button wire:click="saveValue">save</button>
                </div>
            @else
                <div>{{$cellData}}</div>
            @endif
            @break
        @case('date')
            @if($isEditable)
                <input type="date" wire:model="cellData" />
                <button class="bg-violet-700" wire:click="saveValue">save</button>
            @else
                {{$cellData}}
            @endif
            @break
        @case('kingdom')
            @if($isEditable)
                <livewire:content.components.dropdown.dropdown :values="$kingdomOptions"/>
                <button class="bg-violet-700" wire:click="saveValue">save</button>
            @else
                {{$kingdomOptions->find($cellData)->name??''}}
            @endif
            @break
        @case('religion')
            @if($isEditable)
                <livewire:content.components.dropdown.dropdown :values="$religionOptions"/>
                <button class="bg-violet-700" wire:click="saveValue">save</button>
            @else
                {{$religionOptions->find($cellData)->name??''}}
            @endif
            @break
        @case('family')
            @if($isEditable)
                <livewire:content.components.dropdown.dropdown :values="$familyOptions"/>
                <button class="bg-violet-700" wire:click="saveValue">save</button>
            @else
                {{$familyOptions->find($cellData)->name??''}}
            @endif
            @break
        @default
            Type Not Recognized
    @endswitch
</td>
