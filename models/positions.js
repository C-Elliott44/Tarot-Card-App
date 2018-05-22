module.exports = function(sequelize, DataTypes) {
    var Positions = sequelize.define("positions", {
        name: DataTypes.STRING,
        meaning: DataTypes.STRING
    }, {
      timestamps: false
    });
  
    return Positions;
  }