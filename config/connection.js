var Sequelize = require("sequelize");

if (process.env.JAWSDB_URL){
  var sequelize = new Sequelize(process.env.JAWSDB_URL);
}

else { 
var sequelize = new Sequelize(process.env.SEQUELIZE_DB, process.env.SEQUELIZE_USER, process.env.SEQUELIZE_PASSWORD
  , {
  host: process.env.SEQUELIZE_HOST,
  dialect: "mysql" 
})
}

module.exports = sequelize;