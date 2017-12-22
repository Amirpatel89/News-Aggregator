var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var config = require('../config/config');
var connection = mysql.createConnection(config)
connection.connect();

// include bcrpyt for hasing and checking password
var bcrypt = require('bcrypt-nodejs');
// include rand-token for generating a random token
// var randToken = require('rand-token');
/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Final-Project' });
});

router.get('/MyTeams', function(req, res, next) {
  res.render('index', { title: 'Final-Project' });
});

module.exports = router;
