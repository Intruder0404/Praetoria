<?php

namespace App\Http\Livewire\Content\Administration\Table;

use App\Models\Attribute\Attribute;
use App\Models\Family\Family;
use App\Models\Guild\Guild;
use App\Models\Kingdom\Kingdom;
use App\Models\Religion\Religion;
use App\Models\User\User;
use Livewire\Component;
use \Illuminate\Database\Eloquent\Collection;

class TableCell extends Component
{
    public $cellData;
    public $isEditable = false;
    public $rowId = null;
    public $columnName = null;
    public string $cellType = '';
    public string $dataType = '';
    public Collection $users;
    public Collection $guilds;
    public Collection $familys;
    public Collection $religions;
    public Collection $kingdoms;
    public Collection $attributes;

    public function switchEditable()
    {
        $this->isEditable = !$this->isEditable;
    }

    public function saveValue()
    {
        try {
            if ($this->cellType == 'column') {
                $this->emit('updateColumn', ['id' => $this->rowId, 'column' => $this->columnName, 'value' => $this->cellData]);
            } elseif ($this->cellType == 'attribute') {
                $this->emit('updateAttributeValue', ['id' => $this->rowId, 'value' => $this->cellData]);
            }
        } catch (e) {

        }
        $this->isEditable = !$this->isEditable;
    }
    public function setCellData($data)
    {
        $this->cellData = $data;
    }

    public function render()
    {
        return view('content.administration.table.table-cell');
    }
}
