var mysql = require('mysql2');

var db = mysql.createConnection({
    host : 'localhost',
    port: '3306',
    user : 'admin',
    password : '1212456Nmk',
    database: 'fnaf'
});

db.connect( function (err) {
if (err) {
    console.log("!!! Cannot connect !!! Error:"); throw err;
} 
else {
    console.log("Connection established.");
}
});

module.exports = db;