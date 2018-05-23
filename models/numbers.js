var Sequelize = require("sequelize");

var sequelize = require("../config/connection.js");

var Cards = require("./cards.js");

var Numbers = sequelize.define("numbers", {
    name: Sequelize.STRING,
    meaning: Sequelize.STRING
}, {
  timestamps: false
});

Numbers.sync();

module.exports = Numbers;