const  express = require('express');
 
const webSever = express();
const PORT = process.env.PORT || 3000;

webSever.use(express.static('public'));

require("./routes/routes.js")(webSever);



const mysqlDump = require('mysqldump');
 
mysqlDump({
    host: "localhost",
    user: "root",
    password: "root",
    database: "tarot",
    dest:"./tarot.sql",
    ifNotExist:true,
},function(err){
    // create data.sql file;
})


webSever.listen(PORT, function(){
    console.log(`app listening on PORT http://localhost:${PORT}`)
});

