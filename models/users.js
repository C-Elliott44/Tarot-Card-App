const Sequelize = require("sequelize");

const sequelize = require("../config/connection.js");


const User = sequelize.define("users", {
    email: {
        type: Sequelize.STRING
    },
    google_id: {
        type: Sequelize.STRING
    },
    name: {
        type: Sequelize.STRING
    }
}, {
    timestamps: false
});

User.sync();

module.exports = User;