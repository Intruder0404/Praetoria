var mysql = require('mysql');
var express = require('express');
var session = require('express-session');
var bodyParser = require('body-parser');
var path = require('path');
let app = express();

var connection = mysql.createConnection({
	host     : 'localhost',
	user     : 'root',
	password : '',
	database : 'login'
});

app.use(bodyParser.json());

app.get('/', function(req, res) {
	res.send(JSON.stringify({
        firstName: "John",
        lastName: "Doe"
      }))
})
app.get('/Users', function(req, res) {
	res.send(
        JSON.stringify({
            firstName: "John",
            lastName: "Doe"
          })
    )
})

app.listen(3000, function(){
	console.log("Server started on port: 3000")
})