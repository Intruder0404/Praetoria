<x-jet-dialog-modal wire:model="open">
    <x-slot name="title">
        Add Attribute
    </x-slot>

    <x-slot name="content">
            <div>
                <livewire:content.components.dropdown.dropdown :values="$attributes"/>
            </div>
            <div class="flex items-center justify-end mt-4">
                <x-jet-secondary-button onclick="submit()" wire:click="$emit('triggerAddAttributeModal')"
                                        wire:loading.attr="disabled">
                    {{ __('Add') }}
                </x-jet-secondary-button>

                <x-jet-danger-button class="ml-2" wire:click="$emit('triggerAddAttributeModal')" wire:loading.attr="disabled">
                    {{ __('cancel') }}
                </x-jet-danger-button>
            </div>
    </x-slot>
    <x-slot name="footer">
    </x-slot>
</x-jet-dialog-modal>
