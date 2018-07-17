
import {Get, JsonController, Patch, Post as HttpPost} from "routing-controllers";
import {EntityFromParam,EntityFromBody,EntityFromBodyParam,EntityFromCookie,EntityFromQuery} from "typeorm-routing-controllers-extensions";
import {getConnectionManager,getManager, getRepository,Repository} from "typeorm";
import {User} from "../entity/User";

@JsonController()
export class UserController {

  private userRepository: Repository<User>;

  constructor() {
        this.userRepository = getConnectionManager().get().getRepository(User);
    }
  @Get("/getUser/:id")
  getUser(@EntityFromParam("id") user: User){
    return user;
  }
  @Get("/getUsers")
  getUser(@EntityFromCookie() user: <User>){
      return user;
  }
}
