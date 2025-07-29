const mysql = require('mysql2');
const pool = mysql.createPool({
  host: 'localhost',
  user: 'root',        
  password: '',
  database: 'airbnb',
  multipleStatements: true
});
module.exports = pool.promise();
