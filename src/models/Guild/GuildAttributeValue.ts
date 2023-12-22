import {Attribute} from "@/models/Attribute/Attribute";
import {Guild} from "@/models/Guild/Guild";
import {Value} from "@/models/Value/Value";

export interface IGuildAttributeValue {
  id: number;
  familyAttributeId?: number;
  valueId?: number;
  createdAt?: Date;
  updatedAt?: Date|null;
  attribute?: Attribute|null;
  type?: Guild|null;
  value?: Value|null;
}

export class GuildAttributeValue implements IGuildAttributeValue {
  id: number;
  familyId?: number;
  attributeId?: number;
  createdAt?: Date;
  updatedAt?: Date|null;
  attribute: Attribute|null;
  type: Guild|null;
  value: Value|null;

  constructor(
    id: number,
    familyId: number,
    attributeId: number,
    attribute: Attribute|null,
    createdAt: Date|null,
    updatedAt: Date,
    type: Guild|null,
    value: Value|null
  ) {
    this.id = id ? id : 0;
    this.familyId = familyId ? familyId : 0;
    this.attributeId = attributeId ? attributeId : 0;
    this.attribute = attribute?attribute:null;
    this.createdAt = createdAt?createdAt:new Date();
    this.updatedAt = updatedAt?updatedAt:null;
    this.type = type?type:null;
    this.value = value?value:null;
  }

}
