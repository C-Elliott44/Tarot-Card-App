

  $(document).ready(function(){
    $( "div.stackedDeck" ).on("click" , ".cheese", function() {
      console.log('deck is clickable');
      for(var i = 0; i < 78; i++) {
        $( "#fallingCard" + [i] *2 ).animate({
          right: 25 + "vw"
        }, 1500 );
        $( "#fallingCard" + [i] *2 ).animate({
          top: "-=" + i * 4 + "px"
        }, 1500 );
      }
      stepOne();
      for (var a = 0; a<78; a++) {
        stepThree()
      };
      
    });
  });

//  $( "#fallingCard" + [i] *2 ).animate({
//    top: +367 - (i * .5) + 'px',
//    right: 44 + "vw"
//  }, 1500 );


function stepOne() {
  for(var i = 1; i < 78; i++) {
    $( "#fallingCard" + [i *2 + 1] ).animate({
      right: 65 + "vw"
    }, 1500 );
    $( "#fallingCard1").animate({
      right: 65 + "vw"
    }, 1500 );
    $( "#fallingCard" + [i *2 + 1] ).animate({
      top: "-=" + i * 4 + "px"
    }, 1500 );
  }
};

//$( "#fallingCard" + [i *2 + 1] ).animate({
//  top: +367 - (i * .5) + 'px',
//  right: 44 + "vw"
//}, 1500 );

function stepThree() {
    var i = 0;
    $("#fallingCard" + [i]).animate({
      top: +367 - (i * .5) + 'px',
      right: 44 + "vw"
    }, 1500);
    i++
};

function thisIsStupid() {
  
}