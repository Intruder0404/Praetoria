import {UserAttribute,UserAttributeValue} from "@/models";

export interface IUser {
  id: number;
  username?: string;
  email?: string;
  type?: string;
  attributes: UserAttribute[];
  attributeValues: UserAttributeValue[];
}

export class User implements IUser {
  id: number;
  username?: string;
  email?: string;
  type?: string;
  attributes: UserAttribute[];
  attributeValues: UserAttributeValue[];

  constructor(
    id?: number,
    username?: string,
    type?: string,
    email?: string,
    attributes?: UserAttribute[],
    attributeValues?: UserAttributeValue[]
  ) {
    this.id = id ? id : 0;
    this.username = username ? username : '';
    this.type = type ? type : '';
    this.email = email ? email : '';
    this.attributes = attributes ? attributes : [];
    this.attributeValues = attributeValues ? attributeValues : [];
  }

}
