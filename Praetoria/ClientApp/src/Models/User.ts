interface IUser {
    id: number;
    username: string;
    name: string;
}

export class User {

    public id: number;
    public username: string;
    public name: string;

    [key: number]: number | string | User ;
    constructor(
        user?: IUser
    ) {
        if(user){
            this.id = user.id;
            this.username = user.username;
            this.name = user.name;
        }else{
            this.id = 0;
            this.username = '';
            this.name = '';
        }
    }
}