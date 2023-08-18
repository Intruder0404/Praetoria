export interface IAttribute {
  id: number;
  name?: string;
  type?: string;
  isActive: boolean;
  createdAt?: Date;
  updatedAt?: Date;
}

export class Attribute implements IAttribute {
  createdAt: Date;
  id: number;
  isActive: boolean;
  name?: string;
  type: string;
  updatedAt: Date|null;

  constructor(
    id: number,
    name: string,
    type: string,
    isActive: boolean,
    createdAt: Date,
    updatedAt: Date
  ) {
    this.id = id?id:0;
    this.name = name?name:'';
    this.type = type?type:'';
    this.isActive = isActive?isActive:false;
    this.createdAt = createdAt?createdAt:new Date();
    this.updatedAt = updatedAt?updatedAt:null;
  }
}
