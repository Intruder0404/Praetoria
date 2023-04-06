<?php

namespace App\Http\Livewire\Content\Administration\Table;

use App\Models\Attribute\Attribute;
use App\Models\Family\Family;
use App\Models\Family\FamilyAttribute;
use App\Models\Family\FamilyAttributeValue;
use App\Models\Guild\Guild;
use App\Models\Guild\GuildAttribute;
use App\Models\Guild\GuildAttributeValue;
use App\Models\Kingdom\Kingdom;
use App\Models\Kingdom\KingdomAttribute;
use App\Models\Religion\Religion;
use App\Models\Religion\ReligionAttribute;
use App\Models\User\User;
use App\Models\User\UserAttribute;
use App\Models\User\UserAttributeValue;
use App\Models\Value\Value;
use Illuminate\Database\Eloquent\Collection;
use Livewire\Component;

class Table extends Component
{

    public Collection $formHeaderObject;
    public Collection $formValueObject;
    public bool $editable;
    public string $type;

    protected $listeners = ['addAttribute', 'addRow', 'destroyRow', 'updateColumn', 'updateAttributeValue'];

    public function mount()
    {
        switch ($this->type) {
            case "admin.users":
                $this->formHeaderObject = User::All();
                $this->formValueObject = User::All();
                break;
            case "admin.guilds" :
                $this->formHeaderObject = Guild::All();
                $this->formValueObject = Guild::All();
                break;
            case "admin.familles" :
                $this->formHeaderObject = Family::All();
                $this->formValueObject = Family::All();
                break;
            case "admin.religions" :
                $this->formHeaderObject = Religion::All();
                $this->formValueObject = Religion::All();
                break;
            case "admin.kingdoms" :
                $this->formHeaderObject = Kingdom::All();
                $this->formValueObject = Kingdom::All();
                break;
            case "admin.attributes" :
                $this->formHeaderObject = Attribute::All();
                $this->formValueObject = Attribute::All();
                break;
            default :
                $this->formHeaderObject = Attribute::all();
                $this->formValueObject = Attribute::all();
        }
        $this->editable = true;
    }

    public function addAttribute($attributeId)
    {
        switch ($this->type) {
            case "admin.users":
                $userAttribute = UserAttribute::create(['attribute_id' => $attributeId]);
                foreach (User::All() as $user) {
                    $value = Value::create(['value' => '']);
                    UserAttributeValue::create(['user_attribute_id' => $userAttribute->id, 'user_id' => $user->id, 'value_id' => $value->id]);
                }
                $this->formValueObject = User::All();
                $this->formHeaderObject = User::All();
                break;
            case "admin.guilds" :
                $guildAttribute = GuildAttribute::create(['attribute_id' => $attributeId]);
                foreach (Guild::All() as $guild) {
                    $value = Value::create(['value' => '']);
                    GuildAttributeValue::create(['guild_attribute_id' => $guildAttribute->id, 'guild_id' => $guild->id, 'value_id' => $value->id]);
                }
                $this->formValueObject = Guild::All();
                $this->formHeaderObject = Guild::All();
                break;
            case "admin.familles" :
                $familyAttribute = FamilyAttribute::create(['attribute_id' => $attributeId]);
                foreach (Family::All() as $family) {
                    $value = Value::create(['value' => '']);
                    FamilyAttributeValue::create(['family_attribute_id' => $familyAttribute->id, 'family_id' => $family->id, 'value_id' => $value->id]);
                }
                $this->formValueObject = Family::All();
                $this->formHeaderObject = Family::All();
                break;
            case "admin.religions" :
                $religionAttribute = ReligionAttribute::create(['attribute_id' => $attributeId]);
                foreach (Religion::All() as $religion) {
                    $value = Value::create(['value' => '']);
                    ReligionAttributeValue::create(['religion_attribute_id' => $religionAttribute->id, 'religion_id' => $religion->id, 'value_id' => $value->id]);
                }
                $this->formValueObject = Family::All();
                $this->formHeaderObject = Family::All();
                break;
            case "admin.kingdoms" :
                $kingdomAttribute = KingdomAttribute::create(['attribute_id' => $attributeId]);
                foreach (Kingdom::All() as $kingdom) {
                    $value = Value::create(['value' => '']);
                    KingdomAttributeValue::create(['kingdom_attribute_id' => $kingdomAttribute->id, 'kingdom_id' => $kingdom->id, 'value_id' => $value->id]);
                }
                $this->formValueObject = Kingdom::All();
                $this->formHeaderObject = Kingdom::All();
                break;
            case "admin.attributes" :
                $attributeAttribute = AttributeAttribute::create(['attribute_id' => $attributeId]);
                foreach (Attribute::All() as $attribute) {
                    $value = Value::create(['value' => '']);
                    AttributeAttributeValue::create(['attribute_attribute_id' => $attributeAttribute->id, 'attribute_id' => $attribute->id, 'value_id' => $value->id]);
                }
                $this->formValueObject = Attribute::All();
                $this->formHeaderObject = Attribute::All();
                break;
            default :
                $this->formValueObject = Attribute::all();
                $this->formHeaderObject = Attribute::all();
        }
    }

    public function addRow()
    {
        switch ($this->type) {
            case "admin.users":
                $user = User::create(['name' => 'New User']);
                foreach (UserAttribute::All() as $userAttribute) {
                    $value = Value::create(['value' => '']);
                    FamilyAttributeValue::create(['family_id' => $user->id, 'value_id' => $value->id, 'family_attribute_id' => $userAttribute->id]);
                }
                $this->formValueObject = User::All();
                $this->formHeaderObject = User::All();
                break;
            case "admin.guilds" :
                $guild = Guild::create(['name' => 'New Guild']);
                foreach (GuildAttribute::All() as $guildAttribute) {
                    $value = Value::create(['value' => '']);
                    FamilyAttributeValue::create(['family_id' => $guild->id, 'value_id' => $value->id, 'family_attribute_id' => $guildAttribute->id]);
                }
                $this->formValueObject = Guild::All();
                $this->formHeaderObject = Guild::All();
                break;
            case "admin.familles" :
                $family = Family::create(['name' => 'New Family']);
                foreach (FamilyAttribute::All() as $familyAttribute) {
                    $value = Value::create(['value' => '']);
                    FamilyAttributeValue::create(['family_id' => $family->id, 'value_id' => $value->id, 'family_attribute_id' => $familyAttribute->id]);
                }
                $this->formValueObject = Family::All();
                $this->formHeaderObject = Family::All();
                break;
            case "admin.religions" :
                $religion = Religion::create(['name' => 'New Religion']);
                foreach (FamilyAttribute::All() as $religionAttribute) {
                    $value = Value::create(['value' => '']);
                    FamilyAttributeValue::create(['family_id' => $religion->id, 'value_id' => $value->id, 'family_attribute_id' => $religionAttribute->id]);
                }
                $this->formValueObject = Religion::All();
                $this->formHeaderObject = Religion::All();
                break;
            case "admin.kingdoms" :
                $kingdom = Kingdom::create(['name' => 'New Kingdom']);
                foreach (FamilyAttribute::All() as $kingdomAttribute) {
                    $value = Value::create(['value' => '']);
                    FamilyAttributeValue::create(['family_id' => $kingdom->id, 'value_id' => $value->id, 'family_attribute_id' => $kingdomAttribute->id]);
                }
                $this->formValueObject = Kingdom::All();
                $this->formHeaderObject = Kingdom::All();
                break;
            case "admin.attributes" :
                $attribute = Attribute::create(['name' => 'New Attribute']);
                foreach (FamilyAttribute::All() as $attributeAttribute) {
                    $value = Value::create(['value' => '']);
                    FamilyAttributeValue::create(['family_id' => $attribute->id, 'value_id' => $value->id, 'family_attribute_id' => $attributeAttribute->id]);
                }
                $this->formValueObject = Attribute::All();
                $this->formHeaderObject = Attribute::All();
                break;
        }
    }

    public function destroyRow($row)
    {
        switch ($this->type) {
            case "admin.users":
                User::destroy($row['id']);
                $this->formValueObject = User::All();
                break;
            case "admin.guilds" :
                Guild::destroy($row['id']);
                $this->formValueObject = Guild::All();
                break;
            case "admin.familles" :
                Family::destroy($row['id']);
                $this->formValueObject = Family::All();
                break;
            case "admin.religions" :
                Religion::destroy($row['id']);
                $this->formValueObject = Religion::All();
                break;
            case "admin.kingdoms" :
                Kindoms::destroy($row['id']);
                $this->formValueObject = Kindoms::All();
                break;
            case "admin.attributes" :
                Attribute::destroy($row['id']);
                $this->formValueObject = Attribute::All();
                break;
        }
    }

    public function updateColumn($row)
    {
        switch ($this->type) {
            case "admin.users":
                User::where('id', $row['id'])
                    ->update([$row['column'] => $row['value']]);
                $this->formValueObject = User::All();
                break;
            case "admin.guilds" :
                Guild::where('id', $row['id'])
                    ->update([$row['column'] => $row['value']]);
                $this->formValueObject = Guild::All();
                break;
            case "admin.familles" :
                Family::where('id', $row['id'])
                    ->update([$row['column'] => $row['value']]);
                $this->formValueObject = Family::All();
                break;
            case "admin.religions" :
                Religion::where('id', $row['id'])
                    ->update([$row['column'] => $row['value']]);
                $this->formValueObject = Religion::All();
                break;
            case "admin.kingdoms" :
                Kingdom::where('id', $row['id'])
                    ->update([$row['column'] => $row['value']]);
                $this->formValueObject = Kingdom::All();
                break;
            case "admin.attributes" :
                Attribute::where('id', $row['id'])
                    ->update([$row['column'] => $row['value']]);
                $this->formValueObject = Attribute::All();
                break;
        }
    }

    public function updateAttributeValue($row)
    {

        switch ($this->type) {
            case "admin.users":
                $value = Value::find($row['id']);
                $value->value = $row['value'];
                $value->save();
                $this->formValueObject = User::All();
                break;
            case "admin.guilds" :
                $value = Value::find($row['id']);
                $value->value = $row['value'];
                $value->save();
                $this->formValueObject = Guild::All();
                break;
            case "admin.familles" :
                $value = Value::find($row['id']);
                $value->value = $row['value'];
                $value->save();
                $this->formValueObject = Family::All();
                break;
            case "admin.religions" :
                $value = Value::find($row['id']);
                $value->value = $row['value'];
                $value->save();
                $this->formValueObject = Religion::All();
                break;
            case "admin.kingdoms" :
                $value = Value::find($row['id']);
                $value->value = $row['value'];
                $value->save();
                $this->formValueObject = Kingdom::All();
                break;
            case "admin.attributes" :
                $value = Value::find($row['id']);
                $value->value = $row['value'];
                $value->save();
                $this->formValueObject = Attribute::All();
                break;
        }
    }

    public function render()
    {
        return view('content.administration.table.table');
    }
}
