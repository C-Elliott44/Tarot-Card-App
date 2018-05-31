$(document).ready(function () {
    const newUser = $("#id01")
    newUser.hide()

    $("#signup").on("click", (event) => {
        newUser.show();
    })

    var localArr = JSON.parse(localStorage.getItem("array"));
    var array = localArr.map(Number);

    getData();

    function getData() {
        $.ajax("http://localhost:3000/api/cards?ids=" + JSON.stringify(array))
            // $.ajax("http://localhost:3000/api/cards?ids=" + localStorage.getItem("array"))
            .done(function (data) {
                console.log(data);
                for (i = 0; i < array.length; i++) {
                    console.log(data[i].image);
                    $("#b" + (i + 1)).css("background-image", "url(../images/" + data[i].image + ")");
                }
                fullArray = data;
            });
    };
    $(".spread").flip({
        trigger: "manual"
    });

    $(".spread").click(function () {
        $(this).flip(true);
    });

});


//dummy data
//var array = [4, 19, 40, 30, 72, 5, 10, 75, 9, 1];

//var i=0;

//on page load{
//grab array from local storage

var fullArray;
var toggle = 0;

$(document).on('click', '.spread', function () {


    if (this.id - 1 > toggle && toggle === 0) {
        console.log(this.id);
        return;
    }
    else if (this.id - 1 > toggle) {
        return;
    }
    else {
        let positionNumber = this.id - 1;
        let selectedCard = fullArray[positionNumber];
        function updateModal() {
            clearModal();
            if (fullArray[positionNumber].cardNumber === null) {
                let combinedName = (fullArray[positionNumber].name);
                $("#modalCardName").append(combinedName);
                let specialMeaning = (fullArray[positionNumber].meaning);
                $("#modalCardSpecialMeaning").html("<p><strong>Special Meaning:</strong> " + specialMeaning + "</p>");
            }
            else {
                console.log("You should be popping up the modal");
                let combinedName = (fullArray[positionNumber].cardNumber + " of " + fullArray[positionNumber].cardSuit);
                let numberMeaning = (fullArray[positionNumber].number.meaning);
                let suitMeaning = (fullArray[positionNumber].suit.meaning);
                $("#modalCardName").append(combinedName);
                $("#modalCardNumberMeaning").html("<p><strong>Primary Meaning:</strong>   " + fullArray[positionNumber].cardNumber + " - " + numberMeaning + "</p>");
                $("#modalCardSuitMeaning").html("<p><strong>Suit Meaning:</strong>   " + fullArray[positionNumber].cardSuit + " - " + suitMeaning + "</p>");
            }
            let cardImg = ("../images/" + (fullArray[positionNumber].image));
            let element = $("<img>");
            $(element).attr('src', cardImg);
            // let cardImgElement
            let position = (fullArray[positionNumber].position);
            let cardType = (fullArray[positionNumber].cardType);
            let cardTypeMeaning = (fullArray[positionNumber].type.meaning);
            $("#modalCardImg").append(element);
            $("#modalCardType").html("<p><strong>Card Type:</strong>   " + cardType + "</p>");
            $("#modalCardTypeMeaning").html("<p><strong>Arcana Meaning:</strong>   " + cardTypeMeaning + "</p>");
            // $("#modalCardPosition").html("<p>Position: " + position + "</p>");


            function openModal() {
                $("#totalModal").css('display', 'block');
            }
            openModal()
        }
        updateModal();
        // console.log(selectedCard);
        toggle++;
    }


});

// Get the modal
var modal = document.getElementsByClassName("spreadModal");


var span = document.getElementById("spreadClose");


// When the user clicks on <span> (x), close the modal
span.onclick = function () {
    $("#totalModal").css('display', 'none');
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
    if (event.target == modal) {
        $("#totalModal").css('display', 'none');
    }
}

function clearModal() {
    $("#modalCardName").empty();
    $("#modalCardImg").empty();
    $("#modalCardType").empty();
    $("#modalCardTypeMeaning").empty();
    $("#modalCardSpecialMeaning").empty();
    $("#modalCardNumberMeaning").empty();
    $("#modalCardSuitMeaning").empty();
    $("#modalCardPosition").empty();
}