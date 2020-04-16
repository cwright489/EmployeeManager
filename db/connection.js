//dependencies
const mysql = require("mysql");
const util = require("util");

const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "Crashman1",
    database: "EmployeeManager"
});

connection.connect();

//util dependency used to allow us to use async await
connection.query = util.promisify(connection.query);

module.exports = connection