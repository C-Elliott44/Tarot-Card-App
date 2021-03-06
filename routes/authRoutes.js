const router = require('express').Router();
const passport = require('../passport');


router.get('/google', passport.authenticate('google', {
  scope: ["profile", "email"]
}))

router.get('/twitter', passport.authenticate('twitter', {
  scope: ["profile", "email"]
}));

router.get('/facebook', passport.authenticate('facebook'));



router.get('/google/callback',
  passport.authenticate('google', {
    failureRedirect: '/login'
  }),
  function (req, res) {

    res.cookie('id', req.user.id, {
      maxAge: 60 * 60 * 1000 * 10
    }).redirect('/');
  });

 

router.get('/twitter/callback',
  passport.authenticate('twitter', {
    failureRedirect: '/login'
  }),
  function (req, res) {
    // res.json(req.user);
    res.redirect('/')
  });


router.get('/facebook/callback',
  passport.authenticate('facebook', {
    failureRedirect: '/login'
  }, function (req, res, next) {
    res.redirect('/')
  }));


module.exports = router;