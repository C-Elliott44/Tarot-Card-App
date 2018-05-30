function dropDeck(){
    $("#stackDeck").click(function(){
        for (i = 0; i < 78; i++) {
            var $element = $('<div class="cheese" id="fallingCard' + [i] + '">');
            $element.css({
              top: -109 - (i * 50) + 'px'
            })
            $('.stackedDeck').prepend($element)
            $element.animate({
              top: +407 + (i * .5) + 'px'
            }, 4000, 'swing')
          }
    }); 
};




