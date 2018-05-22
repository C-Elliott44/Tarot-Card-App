
// Remember to add +1 to array index number to get correct table id row



//This is the array that all the card unique values are being placed into.
let selectedCards = [];

// Initial Array (In Order)
let cardArray = Array.from({ length: 78 }, (x, i) => i);


// Shuffle function that has the logic to shuffle
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

// Shuffling and logging the Array
cardArray = shuffle(cardArray);
console.log(cardArray);

// Function to JQuery the values of the array to the newly created card row

function createCards() {
    for (var i = 0; i < cardArray.length; i++) {
        let newCard = $("<div>");
        $(newCard).addClass("shuffledCards");
        $(newCard).attr('value', cardArray[i]);
        $(newCard).attr('type', available);
        //#here below needs to be container for all shuffledCards.
        $("#here").append(newCard);
    }
    // cardArray.forEach(function (element) {
    //     // console.log("Successful");
    // })
}
createCards();



//Need to indicate status change from default to selected for CSS representation.
$(document).on("click", ".shuffledCards", function () {
    let cardValue = $(this).attr('value');
    if (this.id === 'selected') {
        alert("You picked this already.  Please select another card.");
        return;
    }
    else {
        cardValue = parseInt(cardValue) + 1;
        console.log(cardValue);
        selectedCards.push(cardValue);
        console.log(selectedCards);
        $(this).attr('id', 'selected');
    }


    if (selectedCards.length === 10) {
        alert("Posting the card array to the controller.");
        // $.post("")
    }
})
