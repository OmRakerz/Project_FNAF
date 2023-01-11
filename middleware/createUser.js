var db = require('../mySQLConnect');
// var mongoose = require("mongoose")
// mongoose.connect('mongodb://127.0.0.1:27017/fnaf')
//  var User = require("./../models/user").User


module.exports = function(req,res,next) {
    res.locals.user = null

        next();
        
        db.query(`SELECT * FROM user WHERE user.user_id = '${req.session.user}'`, (err, users) => {
            if (err)
                return next(err)
            res.locals.user = users;
            next()
        })
}

// module.exports = function(req,res,next) { ...
    // User.findById(req.session.user, function (err, user) {
        //     if (err)
        //         return next(err)
        //     res.locals.user = user;

        // })