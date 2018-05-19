const  express = require('express');
 
const webSever = express();
const PORT = process.env.PORT || 3000;

webSever.use(express.static('public'))


webSever.listen(PORT, function(){
    console.log(`app listening on PORT http://localhost:${PORT}`)
});


