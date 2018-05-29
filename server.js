// do not change or delete this if statement. It is needed for development and will not affect the final product.
if(!process.env.PORT){
    require('dotenv').config();
  }
  const bodyParser = require("body-parser");
  const path = require("path");
  const express = require('express');
  const webServer = express();
  const PORT = process.env.PORT || 3000;
  const authRoutes = require('./routes/authRoutes');
  const cookieParser = require('cookie-parser');
  const passport = require('./passport');
  const session = require('express-session');

  webServer.use(session({
    secret: 'keyboard cat' ,
    resave: true,
    saveUninitialized:true
  }))
  
  webServer.use(bodyParser.urlencoded({ extended: true }));
  webServer.use(bodyParser.json());
  webServer.use(bodyParser.text());
  
  webServer.use(express.static('public'));
  
  require("./routes/routes.js")(webServer, path);
   
  
  webServer.use(express.static('public'));
  webServer.use(cookieParser());
  webServer.use(passport.initialize());
  webServer.use(passport.session());
  webServer.use('/auth', authRoutes)

  // const mysqlDump = require('mysqldump');

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


  webServer.listen(PORT, function () {
      console.log(`app listening on PORT http://localhost:${PORT}`)
  });


 