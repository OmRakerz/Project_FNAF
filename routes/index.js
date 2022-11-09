var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

/* Страница Фредди */
router.get('/Freddy', function(req, res, next) {
  res.send("<h1>Страница Фредди</h1>")
});

/* Страница Бонни */
router.get('/Bonnie', function(req, res, next) {
  res.send("<h1>Страница Бонни</h1>")
});

/* Страница Чики */
router.get('/Chica', function(req, res, next) {
  res.send("<h1>Страница Чики</h1>")
});

/* Страница Фокси */
router.get('/Foxy', function(req, res, next) {
  res.send("<h1>Страница Фокси</h1>")
});

module.exports = router;
