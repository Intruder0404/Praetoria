import {ReligionAttributeValue} from "@/models/Religion/ReligionAttributeValue";

export interface IReligion {
  id: number;
  name?: string;
  type?: string;
  isActive: boolean;
  createdAt?: Date;
  updatedAt?: Date | null;
  attributeValues: ReligionAttributeValue[];
}

export class Religion implements IReligion {
  id: number;
  name?: string;
  type?: string;
  isActive: boolean;
  createdAt: Date;
  updatedAt: Date | null;
  attributeValues: ReligionAttributeValue[];

  constructor(
    id: number,
    name: string,
    type: string,
    isActive: boolean,
    createdAt: Date,
    updatedAt: Date | null,
    attributeValues: ReligionAttributeValue[]
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
