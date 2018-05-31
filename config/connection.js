var Sequelize = require("sequelize");

if(process.env.JAWSDB_URL) {
  //Heroku deployment
    connection = mysql.createConnection(process.env.JAWSDB_URL);
}

else{
var sequelize = new Sequelize(process.env.SEQUELIZE_DB, process.env.SEQUELIZE_USER, process.env.SEQUELIZE_PASSWORD, {
  host: process.env.SEQUELIZE_HOST,
  dialect: "mysql",
  pool: {
    max: 5,
    min: 0,
    idle: 10000
  }
});
};

module.exports = sequelize;