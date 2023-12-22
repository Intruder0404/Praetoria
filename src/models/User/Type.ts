export interface IType {
  id: number;
  name?: string;
  isActive?: boolean;
}

export class Type implements IType {
  id: number;
  name?: string;
  isActive?: boolean;

  constructor(
    type: {
      id?: number,
      name?: string,
      isActive?: boolean,
    }
  ) {
    this.id = type.id ? type.id : 0;
    this.name = type.name ? type.name : '';
    this.isActive = type.isActive ? type.isActive : null;
  }

}
