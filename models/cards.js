module.exports = function(sequelize, DataTypes) {
  var Cards = sequelize.define("cards", {
    type: DataTypes.STRING,
    name: DataTypes.STRING,
    suit: DataTypes.STRING,
    image: DataTypes.STRING,
    meaning: DataTypes.STRING
  }, {
    timestamps: false
  });

  return Cards;
}