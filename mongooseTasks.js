var mongoose = require('mongoose')
mongoose.connect('mongodb://127.0.0.1:27017/test')

var fnaf = mongoose.model('fnaf', { name: String })

var conti = new animatronic({ name: 'Withered Foxy' })
fnaf.save(function (err) {
    if (err) {
        console.log(err)
    } else {
        console.log('freedom')
    }
})