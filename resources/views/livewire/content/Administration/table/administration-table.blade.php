<div class="container horizontal-scrollable" style="height:100%;overflow: auto;">
    <button onclick="alert('allo')">edit</button>
    <table class="shadow-lg bg-violet-500 border-separate table-responsive-md table-striped " style="overflow: auto;">
        <thead class="border-separate">
        <tr>
            @foreach($formObject as $object)
                    <?php
                    $objectArray = json_decode(json_encode($object), true);
                    ?>
                @foreach($objectArray as $key=>$column)
                    <th class="bg-violet-900 text-left px-8 py-4" data-field="name" data-editable="true"
                        scope="col">{{$key}}</th>
                @endforeach
                @break;
            @endforeach
        </tr>
        </thead>
        <tbody>
        @foreach($formObject as $object)
                <?php
                $objectArray = json_decode(json_encode($object), true);
                ?>
            <tr class="border px-8 py-4 bg-violet-700 hover:bg-violet-500 cursor-pointer text-center">
                @foreach($objectArray as $key=>$column)
                    <td class="hover:bg-violet-400" contenteditable="{{$editable}}">{{$column}}</td>
                @endforeach
            </tr>
        @endforeach
        <tbody>
    </table>
</div>

