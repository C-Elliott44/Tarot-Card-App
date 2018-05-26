require('dotenv').config();
const express = require('express');
const webServer = express();
const PORT = process.env.PORT || 3000;
const authRoutes = require('./routes/authRoutes');
const cookieParser = require('cookie-parser');
const passport = require('./passport');

webServer.use(express.static('public'));
webServer.use(cookieParser());
webServer.use(passport.initialize());
webServer.use(passport.session());
webServer.use('/auth', authRoutes)

require("./routes/routes.js")(webServer);

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