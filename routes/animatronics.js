var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
    res.send('Новый маршрутизатор, для маршрутов, начинающихся с animatronics');
});

/* Страница аниматроников */
router.get('/:nick', function(req, res, next) {
    Animatronic.findOne({nick:req.params.nick}, function(err,Animatronic){
        if(err) return next(err)
        if(!animatronic) return next(new Error("Нет такого аниматроника в этой части"))
        res.render('animatronic', {
            title: animatronic.title,
            picture: animatronic.avatar,
            desc: animatronic.desc
        })
    })
})

module.exports = router;