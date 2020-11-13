import { User,Auth } from "../Models/index";
import { GlobalEnvironment } from '../Helpers/index';

export class LoginService {

    static Auth(username:string,password:string) : Promise<Auth>{
        let auth = new Auth();
        auth.username = username;
        auth.password = password;
        let requestHeaders: any = { 'Content-Type': 'application/json' };
        let params: RequestInit = {
            method: 'POST',
            headers: requestHeaders,
            credentials: 'include',
            mode: 'cors',
            body: JSON.stringify(auth)
        };
        return fetch(`${GlobalEnvironment.GetUrl_API()}Auth`, params)
        .then(response => response.json() as Promise<Auth>)
        .then(data => {
            return data;
        });
    }
    /*static updateUser(userId: number,user: User): Promise<User> {
        let requestHeaders: any = { 'Content-Type': 'application/json' };
        let params: RequestInit = {
            method: 'PUT',
            headers: requestHeaders,
            credentials: 'include',
            mode: 'cors',
            body: JSON.stringify(user)
        };

        return fetch(`${GlobalEnvironment.GetUrl_API()}api/user/${userId}`, params)
            .then(response => response.json() as Promise<User>)
            .then(data => {
                return data;
            });
    }

    static addUser(user: User): Promise<User> {
        let requestHeaders: any = { 'Content-Type': 'application/json' };
        let params: RequestInit = {
            method: 'POST',
            headers: requestHeaders,
            credentials: 'include',
            mode: 'cors',
            body: JSON.stringify(user)
        };

        return fetch(`${GlobalEnvironment.GetUrl_API()}api/user`, params)
            .then(response => response.json() as Promise<User>)
            .then(data => {
                return data;
            });
    }

    static fetchUsers(): Promise<User[]> {
        let params: RequestInit = {
            credentials: 'include',
            mode: 'cors'
        };

        return fetch(`${GlobalEnvironment.GetUrl_API()}api/User`, params)
            .then(response => response.json() as Promise<User[]>);
    }

    static fetchUserById(userId: number): Promise<User> {
        let params: RequestInit = {
            credentials: 'include',
            mode: 'cors'
        };

        return fetch(`${GlobalEnvironment.GetUrl_API()}api/user/${userId}`, params)
            .then(response => response.json() as Promise<User>);
    }

    static getReturnBalanceByClassification(classification: string, startDate: string, endDate: string, employeeNumber: number): Promise<number> {
        let params: RequestInit = {
            credentials: 'include',
            mode: 'cors'
        };

        return fetch(`${GlobalEnvironment.GetUrl_API()}api/User/GetReturnBalanceByClassification/${classification}/${startDate}/${endDate}/${employeeNumber}`, params)
            .then(response => response.json() as Promise<number>);
    }

    static fetchUserByEmployeeId(employeeNumber: number): Promise<User> {
        let params: RequestInit = {
            credentials: 'include',
            mode: 'cors'
        };

        return fetch(`${GlobalEnvironment.GetUrl_API()}api/user/EmployeeNumber/${employeeNumber}`, params)
            .then(response => response.json() as Promise<User>);
    }*/
}