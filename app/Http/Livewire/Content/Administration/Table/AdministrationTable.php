<?php

namespace App\Http\Livewire\Content\Administration\Table;

use App\Models\Attribute\Attribute;
use App\Models\Family\Family;
use App\Models\Family\FamilyAttribute;
use App\Models\Family\FamilyAttributeValue;
use App\Models\Guild\Guild;
use App\Models\Kingdom\Kingdom;
use App\Models\Religion\Religion;
use App\Models\User\User;
use App\Models\Value\Value;
use Illuminate\Database\Eloquent\Collection;
use Livewire\Component;

class AdministrationTable extends Component
{

    public Collection $formHeaderObject;
    public Collection $formValueObject;
    public bool $editable;
    public string $type;

    public function mount()
    {
        switch(request()->route()->getName()){
            case "admin.users":
                $this->formHeaderObject = User::All();
                $this->formValueObject = User::All();
                $this->type = request()->route()->getName();
            break;
            case "admin.guilds" :
                $this->formHeaderObject = Guild::All();
                $this->formValueObject = Guild::All();
                $this->type = request()->route()->getName();
                break;
            case "admin.familles" :
                $this->formHeaderObject = Family::All();
                $this->formValueObject = Family::All();
                $this->type = request()->route()->getName();
                break;
            case "admin.religions" :
                $this->formHeaderObject = Religion::All();
                $this->formValueObject = Religion::All();
                $this->type = request()->route()->getName();
                break;
            case "admin.kingdoms" :
                $this->formHeaderObject = Kingdom::All();
                $this->formValueObject = Kingdom::All();
                $this->type = request()->route()->getName();
                break;
            case "admin.attributes" :
                $this->formHeaderObject = Attribute::All();
                $this->formValueObject = Attribute::All();
                $this->type = request()->route()->getName();
                break;
            default :
                $this->formHeaderObject = Attribute::all();
                $this->formValueObject = Attribute::all();
        }
        $this->editable = true;
    }

    public function addAttribute()
    {
    }

    public function addRow()
    {
        switch($this->type){
            case "admin.users":
                User::create(['name' => 'New User']);
                $this->formValueObject = User::All();
                break;
            case "admin.guilds" :
                Guild::create(['name' => 'New Guild']);
                $this->formValueObject = Guild::All();
                break;
            case "admin.familles" :
                $family = Family::create(['name' => 'New Family']);
                foreach(FamilyAttribute::All() as $familyAttribute){
                    $value = Value::create(['value' => '']);
                    FamilyAttributeValue::create(['family_id'=>$family->id,'value_id'=>$value->id,'family_attribute_id'=>$familyAttribute->id]);
                }
                $this->formValueObject = Family::All();
                break;
            case "admin.religions" :
                Religion::create(['name' => 'New Religion']);
                $this->formValueObject = Religion::All();
                break;
            case "admin.kingdoms" :
                Kingdom::create(['name' => 'New Kingdom']);
                $this->formValueObject = Kingdom::All();
                break;
            case "admin.attributes" :
                Attribute::create(['name' => 'New Attribute']);
                $this->formValueObject = Attribute::All();
                break;
            default :
                $this->formValueObject = Attribute::all();
        }

    }

    public function render()
    {
        return view('livewire.content.administration.table.administration-table');
    }
}
