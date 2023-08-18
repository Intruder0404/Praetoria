import {UserAttribute,UserAttributeValue} from "@/models";

export interface IUser {
  id: number;
  name?: string;
  email?: string;
  type?: string;
  attributes: UserAttribute[];
  attributeValues: UserAttributeValue[];
}

export class User implements IUser {
  id: number;
  name?: string;
  email?: string;
  type?: string;
  attributes: UserAttribute[];
  attributeValues: UserAttributeValue[];

  constructor(
    id: number,
    name: string,
    type: string,
    email: string,
    attributes: UserAttribute[],
    attributeValues: UserAttributeValue[]
  ) {
    this.id = id ? id : 0;
    this.name = name ? name : '';
    this.type = type ? type : '';
    this.email = email ? email : '';
    this.attributes = attributes ? attributes : [];
    this.attributeValues = attributeValues ? attributeValues : [];
  }

}
