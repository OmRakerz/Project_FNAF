// var Animatronic = require("./../models/animatronic").Animatronic
var db = require('../mySQLConnect')

module.exports = function(req, res, next){
    res.locals.nav = []

    // Animatronic.find(null,{_id:0,title:1,nick:1},function(err,result)
    db.query(`SELECT title, nick FROM animatronics`, (err, result) =>{
        if(err) throw err
        res.locals.nav = result
        next()
    })

}