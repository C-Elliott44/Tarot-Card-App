var Sequelize = require("sequelize");

var sequelize = require("../config/connection.js");

var Cards = require("./cards.js");

var Types = sequelize.define("types", {
    name: Sequelize.STRING,
    meaning: Sequelize.STRING
}, {
  timestamps: false
});

Types.sync();

module.exports = Types;