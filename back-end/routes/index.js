var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var config = require('../config/config');
const osmosis = require('osmosis');
var connection = mysql.createConnection(config)
connection.connect();

// include bcrpyt for hasing and checking password
var bcrypt = require('bcrypt-nodejs');
// const rp = require('request-promise');
// const cheerio = require('cheerio');
// const options = {
//   uri: `https://www.nfl.com`,
//   transform: function (body) {
//     return cheerio.load(body);
//   }
// };
// rp(options)
//   .then(($) => {
//     console.log($);
//   })
//   .catch((err) => {
//     console.log(err);
//   });


osmosis
    .get('https://www.google.co.in/search?q=falcons')
    .find('.card-section')
    .set('.card-section')
    .data(function(data) {
        console.log(data);
    })



router.get('/', function(req, res, next) {
  res.render('index', { title: 'Final-Project' });
});

router.get('/MyTeams', function(req, res, next) {
  res.render('index', { title: 'Final-Project' });
});

module.exports = router;
