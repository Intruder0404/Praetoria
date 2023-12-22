import {KingdomAttributeValue} from "@/models/Kingdom";

export interface IKingdom {
  id: number;
  name?: string;
  type?: string;
  isActive: boolean;
  createdAt?: Date;
  updatedAt?: Date | null;
  attributeValues: KingdomAttributeValue[];
}

export class Kingdom implements IKingdom {
  id: number;
  name?: string;
  type?: string;
  isActive: boolean;
  createdAt: Date;
  updatedAt: Date | null;
  attributeValues: KingdomAttributeValue[];

  constructor(
    id: number,
    name: string,
    type: string,
    isActive: boolean,
    createdAt: Date,
    updatedAt: Date | null,
    attributeValues: KingdomAttributeValue[]
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
