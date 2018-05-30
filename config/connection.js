var Sequelize = require("sequelize");

if(process.env.JAWSDB_URL){

  const sequelize = new Sequelize
  ('mysql://ecq64f8aj9prm5a8:oyeyaya4bwjolqbt@k9xdebw4k3zynl4u.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/q9smvk3vrgj68skg');

} else {

var sequelize = new Sequelize(process.env.SEQUELIZE_DB, process.env.SEQUELIZE_USER, process.env.SEQUELIZE_PASSWORD, {
  host: process.env.SEQUELIZE_HOST,
  dialect: "mysql",
  pool: {
    max: 5,
    min: 0,
    idle: 10000
  }
});
}
module.exports = sequelize;