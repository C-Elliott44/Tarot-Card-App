//This is the fade in and out of different elements

$( "#catagorySubmit" ).click(function() {
    $( "#pilotFadeOut" ).fadeOut( "slow", function dropDeck(){
      for (i = 0; i < 78; i++) {
          var $element = $('<div class="cheese" id="fallingCard' + [i] + '">');
          $element.css({
            zIndex: i,
            top: -109 - (i * 50) + 'px'
          })
          $('.stackedDeck').prepend($element)
          $element.animate({
            top: +367 - (i * .5) + 'px',
          }, 1500, 'linear')
        };
        $( "#shuffleMe" ).fadeIn( "slow" );
  });
  });

  $( "#catagorySubmit" ).click(function() {
    $( "#deck" ).fadeIn( "slow" );
  });


