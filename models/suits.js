var Sequelize = require("sequelize");

var sequelize = require("../config/connection.js");

var Cards = require("./cards.js");

var Suits = sequelize.define("suits", {
    name: Sequelize.STRING,
    meaning: Sequelize.STRING
}, {
  timestamps: false
});

Suits.sync();

module.exports = Suits;