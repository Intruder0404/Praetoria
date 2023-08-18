<div>
    <select wire:model="value" wire:change="onChange">
        <option value="" selected disabled>Select your option</option>
        @foreach($values as $value)
            <option value="{{$value->id}}">{{$value->name}}</option>
        @endforeach
    </select>
</div>
