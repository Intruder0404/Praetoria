import {createConnection, useContainer} from "typeorm";
import {Container} from "typedi";
import {createExpressServer} from "routing-controllers";
import {UserController} from "./controller/UserController";
import * as express from "express";
import {Request, Response} from "express";
import * as bodyParser from  "body-parser";
import {User} from "./entity/User";
createConnection().then(connection => {
    const userRepository = connection.getRepository(User);

    // create and setup express app
    const app = express();
    app.use(bodyParser.json());

    // register routes

    app.get("/users", async function(req: Request, res: Response) {
        res.send(await userRepository.find());
    });

    app.get("/users/:username", async function(req: Request, res: Response) {
        res.send(await userRepository.findOne({username:req.params.username}));
    });

    app.post("/users", async function(req: Request, res: Response) {
        const user = userRepository.create(req.body.user);
        console.log(user);
        userRepository.save(user).then((output)=>{
          res.send('success');
        }).catch((err)=>{
          res.send(err);
        });
    });

    app.delete("/users/:id", async function(req: Request, res: Response) {
        return userRepository.remove(req.params.id);
    });

    // start express server
    app.listen(3001);
});
 // const express = require('express')
 // const app = express()
 // var errorhandler = require('errorhandler')
// var bodyParser = require('body-parser')
// app.use( bodyParser.json() );       // to support JSON-encoded bodies
// app.use(bodyParser.urlencoded({     // to support URL-encoded bodies
//   extended: true
// }));
//useContainer(Container);
// createConnection().then(async connection => {
//     console.log("Connected. Now run express app");
//     const app = createExpressServer({
//         controllers: [UserController]
//     }).listen(3000);
//     console.log("Server is up and running on port 3000. Now send requests to check if everything works.");
//
// }).catch(error => console.log("Error: ", error));
/*app.get('/', (req, res) => res.send('Hello World!'))
app.get('/getUser/:username', function (req, res){
  const userController = new UserController();
  userController.getUser(req.params).then(result =>{
    res.json(result);
  });

})
app.post('/addUser', function (req, res){
  const userController = new UserController();
  let user = userController.addUser(req.params);
})
app.delete('/deleteUser', (req, res) => res.send('Hello World!'))
app.put('/modifyUser', (req, res) => res.send('Hello World!'))
app.get('/getPraetorian', (req, res) => res.send('Hello World!'))
app.post('/addPraetorian', (req, res) => res.send('Hello World!'))
app.delete('/deletePraetorian', (req, res) => res.send('Hello World!'))
app.put('/modifyPraetorian', (req, res) => res.send('Hello World!'))

app.listen(3000, () => console.log('Example app listening on port 3000!'))*/
