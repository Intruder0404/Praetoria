<?php

namespace App\Http\Livewire\Content\Administration\Table;

use App\Models\Value\Value;
use Illuminate\Database\Eloquent\Collection;
use Livewire\Component;

class Table extends Component
{

    public Collection $formHeaderObject;
    public Collection $formValueObject;
    const __modelUrl = 'App\\Models\\';
    public bool $editable;
    public string $type;

    protected $listeners = ['addAttribute', 'addRow', 'destroyRow', 'updateColumn', 'updateAttributeValue'];

    public function mount()
    {
        $this->formHeaderObject = call_user_func(array(self::__modelUrl.$this->type.'\\'.$this->type, 'All'));
        $this->formValueObject = call_user_func(array(self::__modelUrl.$this->type.'\\'.$this->type, 'All'));
        $this->editable = true;
    }

    public function addAttribute($attributeId)
    {
        $attribute = call_user_func(array(self::__modelUrl.$this->type.'\\'.$this->type.'Attribute', 'create'),
            ['attribute_id' => $attributeId]);
        foreach (call_user_func(array(self::__modelUrl.$this->type.'\\'.$this->type, 'All')) as $user) {
            $value = Value::create(['value' => '']);
            call_user_func(array(self::__modelUrl.$this->type.'\\'.$this->type.'AttributeValue', 'create')
                ,[strtolower($this->type).'_attribute_id' => $attribute->id, strtolower($this->type).'_id' => $user->id, 'value_id' => $value->id]);
        }
        $this->formHeaderObject = call_user_func(array(self::__modelUrl.$this->type.'\\'.$this->type, 'All'));
        $this->formValueObject = call_user_func(array(self::__modelUrl.$this->type.'\\'.$this->type, 'All'));
    }

    public function addRow()
    {
        $model = call_user_func(array(self::__modelUrl.$this->type.'\\'.$this->type, 'create'),
            ['name' => 'Default']);
        if($this->type != 'Attribute'){
            foreach (call_user_func(array(self::__modelUrl.$this->type.'\\'.$this->type.'Attribute', 'All')) as $attribute) {
                $value = Value::create(['value' => '']);
                call_user_func(array(self::__modelUrl.$this->type.'\\'.$this->type.'AttributeValue', 'create')
                    ,[strtolower($this->type).'_attribute_id' => $attribute->id, strtolower($this->type).'_id' => $model->id, 'value_id' => $value->id]);
            }
        }
        $this->formHeaderObject = call_user_func(array(self::__modelUrl.$this->type.'\\'.$this->type, 'All'));
        $this->formValueObject = call_user_func(array(self::__modelUrl.$this->type.'\\'.$this->type, 'All'));
    }

    public function destroyRow($row)
    {
        call_user_func(array(self::__modelUrl.$this->type.'\\'.$this->type, 'destroy'),$row['id']);
        $this->formValueObject = call_user_func(array(self::__modelUrl.$this->type.'\\'.$this->type, 'All'));
    }

    public function updateColumn($row)
    {
        call_user_func(array(self::__modelUrl.$this->type.'\\'.$this->type, 'where'),['id' => $row['id']])
            ->update([$row['column'] => $row['value']]);
        $this->formValueObject = call_user_func(array(self::__modelUrl.$this->type.'\\'.$this->type, 'All'));
    }

    public function updateAttributeValue($row)
    {
        $value = Value::find($row['id']);
        $value->value = $row['value'];
        $value->save();
        $this->formValueObject = call_user_func(array(self::__modelUrl.$this->type.'\\'.$this->type, 'All'));
    }

    public function render()
    {
        return view('content.administration.table.table');
    }
}
