const mysql = require ('mysql')
const mysqlConnect = mysql.createConnection({
    host:'127.0.0.1',
    user:'zanaRaiz',
    password:'lucho12arg',
    database:'raices'
})
module.exports = mysqlConnect