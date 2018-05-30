//this adds the class 'glow' to the card that is picked, moving it up slightly and making it glow
//Adds card data to array that will be

$(document).ready(function(){
    $('div#cards').on("click", ".card", function(){
        if(allCardData.length < 10 && this.id !== 'glow') {
        var status = $(this).attr('value');
        $(this).attr('id', 'glow');
        console.log(status);
        allCardData.push(status);
        allCardsPicked();
        getValue();
        }
    });
});

function allCardsPicked() {
    if(allCardData.length === 10) {
        $( "#cards" ).fadeOut( 1600, function(){
            $( "div.container" ).fadeIn( "slow" );
        } );
    };
};
var allCardData = [];

function singleCardPick() {
    
}

function getValue(){
    let cardValue = $(this).attr('value');
    if (this.class === 'glow') {
        alert("You picked this already.  Please select another card.");
        return;
    }
    else {
        cardValue = parseInt(cardValue) + 1;
        console.log(cardValue);
        console.log(allCardData);
        
    }

}