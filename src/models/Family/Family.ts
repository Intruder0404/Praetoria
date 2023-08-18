import {FamilyAttributeValue} from "@/models/Family/FamilyAttributeValue";

export interface IFamily {
  id: number;
  name?: string;
  type?: string;
  isActive: boolean;
  createdAt?: Date;
  updatedAt?: Date | null;
  attributeValues: FamilyAttributeValue[];
}

export class Family implements IFamily {
  id: number;
  name?: string;
  type?: string;
  isActive: boolean;
  createdAt: Date;
  updatedAt: Date | null;
  attributeValues: FamilyAttributeValue[];

  constructor(
    id: number,
    name: string,
    type: string,
    isActive: boolean,
    createdAt: Date,
    updatedAt: Date | null,
    attributeValues: FamilyAttributeValue[]
  ) {
    this.id = id ? id : 0;
    this.name = name ? name : '';
    this.type = type ? type : '';
    this.isActive = isActive ? isActive : false;
    this.createdAt = createdAt ? createdAt : new Date();
    this.updatedAt = updatedAt ? updatedAt : null;
    this.attributeValues = attributeValues ? attributeValues : [];
  }

}
