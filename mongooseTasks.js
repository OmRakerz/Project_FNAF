var mongoose = require('mongoose')
mongoose.connect('mongodb://127.0.0.1:27017/test')

var schema = mongoose.Schema({ name: String })

schema.methods.freedom = function(){
    console.log(this.get("name") + " крикнул freedom")
}

var fnaf = mongoose.model('fnaf', schema)

var withered = new fnaf({ name: 'Withered Foxy' })
withered.save(function (err) {
    withered.freedom()
})