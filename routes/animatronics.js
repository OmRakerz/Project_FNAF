var express = require('express');
var router = express.Router();
var Animatronic = require("../models/animatronic").Animatronic

/* GET users listing. */
router.get('/', function(req, res, next) {
    res.send('Новый маршрутизатор, для маршрутов, начинающихся с animatronics');
});

/* Страница аниматроников */
router.get('/:nick', function(req, res, next) {
    Animatronic.findOne({nick:req.params.nick}, function(err,animatronic){
        if(err) return next(err)
        if(!animatronic) return next(new Error("Нет такого аниматроника в этой части"))
        res.render('fnaf', {
            title: animatronic.title,
            picture: animatronic.avatar,
            desc: animatronic.desc
        })
    })
})

module.exports = router;