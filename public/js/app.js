$(document).ready(function () {
    const newUser = $("#id01")
    newUser.hide()

    $("#signup").on("click", (event) => {
        newUser.show();
    })
});

//dummy data
var array = [4, 19, 40, 30, 72, 5, 10, 75, 9, 1];

var i=0;

$.ajax("http://localhost:3000/api/cards?ids=" + JSON.stringify(array))
    .done(function(data) {
        console.log(data);
        for (i=0; i < array.length; i++) {
            $("#b" + (i+1)).css("background-image", "url(../images/" + data[i].image + ")");
        }
    });

