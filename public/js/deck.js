//This creates the deck with a random value between 1-78 assigne to it
//Animates the deck with its offset
let cardArray = Array.from({ length: 78 }, (x, i) => i);

$(document).ready(function(){

    $("#new_deck").click(function(){
        $("#cards").html('');
        for(var i = 0; i < cardArray.length; i++) {
            $('#cards').prepend('<div class="card" value="' + cardArray[i] + '"></div>');
        }
        $("#cards .card").animate({marginRight:"-107px"},2000,"swing");
        return false;
    });
    
});

function shuffle(array) {
    var currentIndex = array.length, temporaryValue, randomIndex;

    // While there remain elements to shuffle...
    while (0 !== currentIndex) {

        // Pick a remaining element...
        randomIndex = Math.floor(Math.random() * currentIndex);
        currentIndex -= 1;

        // And swap it with the current element.
        temporaryValue = array[currentIndex];
        array[currentIndex] = array[randomIndex];
        array[randomIndex] = temporaryValue;
    }

    return array;
}

cardArray = shuffle(cardArray);

