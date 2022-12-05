var express = require('express');
var router = express.Router();
var Animatronic = require("../models/animatronic").Animatronic
var async = require("async")

    /* GET users listing. */
router.get('/', function(req, res, next) {
    res.send('Новый маршрутизатор, для маршрутов, начинающихся с animatronics')
});
/* Страница аниматроников */
router.get('/:nick', function(req, res, next) {
    async.parallel([
            function(callback){
                Animatronic.findOne({nick:req.params.nick}, callback)
            },
            function(callback){
                Animatronic.find({},{_id:0,title:1,nick:1},callback)
            }
        ],
        function(err,result){
            if(err) return next(err)
            var animatronic = result[0]
            var animatronics = result[1] || []
            if(!animatronic) return next(new Error("Нет такого аниматроника в этой части"))
            res.render('fnaf', {
                title: animatronic.title,
                picture: animatronic.avatar,
                desc: animatronic.desc,
                menu: animatronics
            });
        })
})


/* Страница аниматроников
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
*/

module.exports = router;