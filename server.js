require ('dotenv').config();
const  express = require('express');
const passport = require('passport'); 
const webServer = express();
const PORT = process.env.PORT || 3000;

webServer.use(express.static('public'));

webServer.use(passport.initialize());
webServer.use(passport.session());

passport.serializeUser(function(user, done) {
  done(null, user);
});

passport.deserializeUser(function(user, done) {
  done(null, user);
});


require("./routes/routes.js")(webServer);

const mysqlDump = require('mysqldump');
 
// mysqlDump({
//     host: "localhost",
//     user: "root",
//     password: "root",
//     database: "tarot",
//     dest:"./tarot.sql",
//     ifNotExist:true,
// },function(err){
//     // create data.sql file;
// })  

webServer.listen(PORT, function(){
    console.log(`app listening on PORT http://localhost:${PORT}`)
});



