import {Attribute} from "@/models/Attribute/Attribute";

export interface IReligionAttribute {
  id: number;
  familyId?: number;
  attributeId?: number;
  attribute: Attribute[];
}

export class ReligionAttribute implements IReligionAttribute {
  id: number;
  familyId?: number;
  attributeId?: number;
  attribute: Attribute[];

  constructor(
    id: number,
    familyId: number,
    attributeId: number,
    attribute: Attribute[]
  ) {
    this.id = id ? id : 0;
    this.familyId = familyId ? familyId : 0;
    this.attributeId = attributeId ? attributeId : 0;
    this.attribute = attribute?attribute:[];
  }

}
