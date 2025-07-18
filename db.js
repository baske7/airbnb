const mysql = require('mysql2');

const pool = mysql.createPool({
  host: 'localhost',
  user: 'root',        // obavezno zameni ovamo
  password: '',// i ovamo
  database: 'airbnb',// ime tvoje baze
  multipleStatements: true
});

module.exports = pool.promise();
