<div class="container horizontal-scrollable" style="height:100%;overflow: auto;">
    <table class="shadow-lg bg-violet-500 border-separate table-responsive-md table-striped " style="overflow: auto;">
        <livewire:content.administration.table.table-header key="{{ Str::random() }}" :headerData="$formHeaderObject"/>
        <livewire:content.administration.table.table-body key="{{ Str::random() }}" :bodyData="&$formValueObject"/>
        <livewire:content.administration.table.table-footer key="{{ Str::random() }}" :bodyData="$formValueObject"/>
    </table>
</div>

