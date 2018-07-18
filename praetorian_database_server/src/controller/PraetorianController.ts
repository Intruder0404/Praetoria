import "reflect-metadata";
import {createConnection} from "typeorm";
import {User} from "./entity/User";

function createMyUser(newUser){
  createConnection().then(async connection => {

    var dateTime = require('node-datetime');
    var dt = dateTime.create();
    var formatted = dt.format('Y-m-d H:M:S');
      const user = new User();
      user.first_name = newUser.first_name;
      user.last_name = newUser.last_name;
      user.name = newUser.first_name+" "+newUser.last_name;
      user.password=newUser.password;
      user.type=newUser.type;
      user.username=newUser.username;
      user.email=newUser.email;
      user.address=newUser.address;
      user.join_date=formatted;
      user.payment=newUser.payment;
      await connection.manager.save(user);
      const users = await connection.manager.find(User);

  }).catch(error => console.log(error));
}
