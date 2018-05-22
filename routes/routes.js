var db = require('../models');

module.exports = function (webServer) {

    
    webServer.get("/api/cards/:id", function(req, res) {
        var id = req.params.id;
        db.Cards.findById(id).then(function(result) {

            console.log (result);
            
          })
    })
}

