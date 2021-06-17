const Sequelize = require("sequelize")

const sequelize = new Sequelize('festive_newton', 'root', '123456',{
    host: 'localhost',
    dialect: 'mysql'
})

module.exports = {
    Sequelize: Sequelize,
    sequelize: sequelize
}