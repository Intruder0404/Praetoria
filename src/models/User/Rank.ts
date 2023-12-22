export interface IRank {
  id: number;
  name?: string;
  isActive?: boolean;
}

export class Rank implements IRank {
  id: number;
  name?: string;
  isActive?: boolean;

  constructor(
    rank: {
      id?: number,
      name?: string,
      isActive?: boolean,
    }
  ) {
    this.id = rank.id ? rank.id : 0;
    this.name = rank.name ? rank.name : '';
    this.isActive = rank.isActive ? rank.isActive : null;
  }

}
