import { User } from "./index";
interface IAuth {
    username: string;
    password: string;
    user: User;
}
export class Auth {

    public username: string;
    public password: string;
    public user: User;
    [key: string]: string | User ;
    constructor(
        auth?: IAuth
    ) {
        if (auth) {
            this.username = auth.username;
            this.password = auth.password;
            this.user = auth.user;
        }
        else
        {
            this.username = '';
            this.password = '';
            this.user = new User();
        }
    }
}