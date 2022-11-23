var mongoose = require('mongoose')
mongoose.connect('mongodb://127.0.0.1:27017/test')

var Animatronic = mongoose.model('Animatronic', { name: String })

var endoskeleton = new Animatronic ({ name: 'Withered Foxy' })
endoskeleton.save(function (err) {
    if (err) {
        console.log(err)
    } else {
        console.log('freedom')
    }
})