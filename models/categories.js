module.exports = function(sequelize, DataTypes) {
    var Categories = sequelize.define("categories", {
      name: DataTypes.STRING,
      meaning: DataTypes.STRING
    }, {
      timestamps: false
    });
  
    return Categories;
  }