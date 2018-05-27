const passport = require('passport');
const GoogleStrategy = require('passport-google-oauth20').Strategy;
const users = require('../models/users');



passport.use(new GoogleStrategy({
        clientID: process.env.GOOGLE_CLIENT_ID,
        clientSecret: process.env.GOOGLE_CLIENT_SECRET,
        callbackURL: process.env.GOOGLE_CB_URL
    },
    function (accessToken, refreshToken, profile, cb) {
        users.findOrCreate({
                where: {
                    $or: [{
                            email: profile.emails[0].value
                        },
                        {
                            google_id: profile.id.toString()
                        }
                    ]

                },
                defaults: {
                    email: profile.emails[0].value,
                    google_id: profile.id.toString(),
                    name: profile.displayName

                }
            })
            .spread(function (user, created) {
                return cb(null, user)
            })

    }));






passport.serializeUser(function (user, cb) {
    cb(null, user);
});

passport.deserializeUser(function (obj, cb) {
    cb(null, obj);
});


module.exports = passport;