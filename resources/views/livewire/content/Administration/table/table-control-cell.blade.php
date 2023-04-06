<td>
    <button class="bg-violet-700 hover:bg-violet-400 font-bold py-2 px-4 rounded-r"
            wire:click="$emit('destroyRow',{{$cellData}})"
    >
        <i class="fa fa-trash" aria-hidden="true"></i>
    </button>
</td>
