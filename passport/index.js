const passport = require('passport');
const GoogleStrategy = require('passport-google-oauth20').Strategy;
const TwitterStrategy = require('passport-twitter').Strategy;
const FacebookStrategy = require('passport-facebook').Strategy;
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

passport.use(new TwitterStrategy({
        consumerKey: process.env.TWITTER_CONSUMER_KEY,
        consumerSecret: process.env.TWITTER_CONSUMER_SECRET,
        userProfileURL: process.env.TWITTTER_USER_EMAIL,
        callbackURL: process.env.TWITTER_CALLBACK_URL
    },
    function (token, tokenSecret, profile, done) {
        users.findOrCreate({
        where: {
            $or:[
                {email: profile.emails[0].value},
                {twitter_id: profile.id.toString()}
            ]  
        },
        defaults :{
            email: profile.emails[0].value,
            twitter_id:profile.id.toString(),
            name: profile.displayName

        }
    })
        .spread(function (user, created) {
            return done(null, user)
        })

    }
));





passport.use(new FacebookStrategy({
        clientID: process.env.FACEBOOK_APP_ID,
        clientSecret: process.env.FACEBOOK_APP_SECRET,
        callbackURL: process.env.FACEBOOK_CB_URL
    },
    function (accessToken, refreshToken, profile, done) {
        done(null, user)
    }));



passport.serializeUser(function (user, cb) {
    cb(null, user);
});

passport.deserializeUser(function (obj, cb) {
    cb(null, obj);
});




module.exports = passport;