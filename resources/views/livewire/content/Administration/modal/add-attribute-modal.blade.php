<x-dialog-modal wire:model="open">
    <x-slot name="title">
        Add Attribute
    </x-slot>

    <x-slot name="content">
        <form wire:submit.prevent="submit">
            <div>
                <livewire:content.components.dropdown.dropdown :values="$attributes"/>
            </div>
            <div class="flex items-center justify-end mt-4">
                <x-secondary-button wire:click="$emit('triggerAddAttributeModal')" wire:click="save"
                                        wire:loading.attr="enabled">
                    {{ __('Add') }}
                </x-secondary-button>

                <x-danger-button class="ml-2" wire:click="$emit('triggerAddAttributeModal')" wire:loading.attr="disabled">
                    {{ __('cancel') }}
                </x-danger-button>
            </div>
        </form>
    </x-slot>
    <x-slot name="footer">
    </x-slot>
</x-dialog-modal>
