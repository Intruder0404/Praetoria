<div>
    <select wire:model="value">
        @foreach($values as $value)
            <option>{{$value->name}}</option>
        @endforeach
    </select>
</div>
