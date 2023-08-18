import {GuildAttributeValue} from "@/models/Guild";

export interface IGuild {
  id: number;
  name?: string;
  type?: string;
  isActive: boolean;
  createdAt?: Date;
  updatedAt?: Date|null;
  attributeValues: GuildAttributeValue[];
}

export class Guild implements IGuild {
  id: number;
  name?: string;
  type?: string;
  isActive: boolean;
  createdAt: Date;
  updatedAt: Date|null;
  attributeValues: GuildAttributeValue[];

  constructor(
    id: number,
    name: string,
    type: string,
    isActive: boolean,
    createdAt: Date,
    updatedAt: Date|null,
    attributeValues: GuildAttributeValue[]
  ) {
    this.id = id?id:0;
    this.name = name?name:'';
    this.type = type?type:'';
    this.isActive = isActive?isActive:false;
    this.createdAt = createdAt?createdAt:new Date();
    this.updatedAt = updatedAt?updatedAt:null;
    this.attributeValues = attributeValues?attributeValues:[];
  }

}
