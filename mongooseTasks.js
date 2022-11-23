var mongoose = require('mongoose')
mongoose.connect('mongodb://127.0.0.1:27017/test')

var schema = mongoose.Schema({ name: String })

schema.methods.freedom = function(){
    console.log(this.get("name") + " крикнул freedom")
}

var Animatronic = mongoose.model('Animatronic', schema)

var endoskeleton = new Animatronic({ name: 'Withered Foxy' })
endoskeleton.save(function (err) {
    endoskeleton.freedom()
})