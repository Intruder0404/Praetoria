interface IValue {
  id: number;
  value?: string;
  createdAt?: Date;
  updatedAt?: Date|null;
}

export class Value implements IValue {
  id: number;
  value?: string;
  createdAt?: Date;
  updatedAt?: Date|null;

  constructor(
    id: number,
    value: string,
    createdAt: Date,
    updatedAt: Date|null
  ) {
    this.id = id?id:0;
    this.value = value?value:'';
    this.createdAt = createdAt?createdAt:new Date();
    this.updatedAt = updatedAt?updatedAt:null;
  }
}
