var mongoose = require('mongoose')
mongoose.connect('mongodb://127.0.0.1:27017/test1')

var Animatronic = require("./models/animatronic").Animatronic


var animatronic = new Animatronic({
    title: "Фазбер",
    nick: "Fazbear"
})


console.log(animatronic)
animatronic.save(function(err, animatronic, affected){
    console.log(animatronic.title)
})
