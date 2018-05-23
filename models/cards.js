var Sequelize = require("sequelize");

var sequelize = require("../config/connection.js");

var Types = require("./types.js");
var Numbers = require("./numbers.js");
var Suits = require("./suits.js");

var Cards = sequelize.define("cards", {
    cardType: Sequelize.STRING,
    name: Sequelize.STRING,
    cardNumber: Sequelize.STRING,
    cardSuit: Sequelize.STRING,
    image: Sequelize.STRING,
    meaning: Sequelize.STRING
}, {
  timestamps: false
});

Cards.belongsTo(Types, {foreignKey: "cardType", targetKey: "name"});

Cards.belongsTo(Numbers, {foreignKey: "cardNumber", targetKey: "name"});

Cards.belongsTo(Suits, {foreignKey: "cardSuit", targetKey: "name"});

Cards.sync();

module.exports = Cards;