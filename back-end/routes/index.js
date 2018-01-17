var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var config = require('../config/config');
var connection = mysql.createConnection(config)
connection.connect();

router.get('/', (req, res, next)=>{
	const getGraphics = "SELECT * from graphicscards";
	connection.query(getGraphics, (error, results)=>{
		if(error){
			throw error;
		}
		console.log(results);
		res.json({
			name: results[0].itemname
		});
	})
});



router.get('/MyTeams', function(req, res, next) {
  res.render('index', { title: 'Final-Project' });
});



module.exports = router;
