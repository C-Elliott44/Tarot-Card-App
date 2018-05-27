const router = require('express').Router();
const passport = require('../passport');
router

    .get('/google', passport.authenticate('google', {
        scope: ["profile", "email"]
    }))

    // .get('/twitter/', (req, res, next) => {
    //     res.send('twitter works');
    // })

    // .get('/facebook/', (req, res, next) => {
    //     res.send('facebook works');
    // })

    router.get('/google/callback', 
  passport.authenticate('google', { failureRedirect: '/login' }),
  function(req, res) {
     
    res.cookie('id', req.user.id,{maxAge:60*60*1000*24}).redirect('/');
  });

    router.get('/test',function(req,res,next){
      res.json(req.cookies)
    }) 



module.exports = router;