$(document).ready(function () {
    const newUser = $("#id01")
    newUser.hide()

    $("#signup").on("click", (event) => {
        newUser.show();
    })
});

//dummy data
var array = [4, 19, 40, 30, 72, 5, 10, 72, 9, 1];

$.ajax("http://localhost:3000/api/cards?ids=" + JSON.stringify(array))
    .done(function(data) {
        console.log(data);
    });

