$(document).ready(function () {
    const newUser = $("#id01")
    newUser.hide()

    $("#signup").on("click", (event) => {
        newUser.show();
    })
});