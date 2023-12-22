import {Attribute} from "@/models/Attribute/Attribute";
import {Religion} from "@/models/Religion/Religion";
import {Value} from "@/models/Value/Value";
import {User} from "@/models/User/User";

export interface IUserAttributeValue {
  id: number;
  familyAttributeId?: number;
  valueId?: number;
  createdAt?: Date;
  updatedAt?: Date|null;
  attribute?: Attribute|null;
  type?: User|null;
  value?: Value|null;
}

export class UserAttributeValue implements IUserAttributeValue {
  id: number;
  familyId?: number;
  attributeId?: number;
  createdAt?: Date;
  updatedAt?: Date|null;
  attribute: Attribute|null;
  type: User|null;
  value: Value|null;

  constructor(
    id: number,
    familyId: number,
    attributeId: number,
    attribute: Attribute|null,
    createdAt: Date|null,
    updatedAt: Date,
    type: User|null,
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
