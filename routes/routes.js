var Cards = require('../models/cards.js');
var Types = require('../models/types.js');
var Numbers = require('../models/numbers.js');
var Suits = require('../models/suits.js');
var Positions = require('../models/positions.js');

module.exports = function (webServer) {

    webServer.get("/api/cards/:id/", function (req, res) {
        //var id = req.params.id;
        Cards.findOne({
            where: {
                id: req.params.id
            },
            include: [Types, Numbers, Suits]
        }).then(function (result) {
            res.json(result);
            if (result.cardType === "Major Arcana") {
                console.log(result.name);
            } else {
                console.log(result.number.name + " of " + result.suit.name);
            }

            console.log(result.meaning);
            console.log(result.type.name);
            console.log(result.type.meaning);
            if (result.cardType === "Minor Arcana") {
                console.log(result.number.name);
                console.log(result.number.meaning);
                console.log(result.suit.name);
                console.log(result.suit.meaning);
            }
        });
    });




    webServer.get("/api/positions/:id/", function (req, res) {
        var id = req.params.id;
        Positions.findById(id).then(function (result) {
            res.json(result);
            console.log(result.name);
            console.log(result.meaning);
        });
    });

}