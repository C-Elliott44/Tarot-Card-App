
// Remember to add +1 to array index number to get correct table id row


// Initial Array (In Order)
let cardArray = Array.from({ length: 72 }, (x, i) => i);


// Shuffle function that has the logic to shuffle
function shuffle (array) {
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


