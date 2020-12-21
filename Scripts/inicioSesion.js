$(document).ready(function() {
    $("#registro").hide(1);

    $("footer a, section a").mouseover(function() {
        $(this).css("text-decoration", "underline");
    });
    $("footer a, section a").mouseout(function() {
        $(this).css("text-decoration", "none");
    });
})

$("#inicioS").click(function() {
    $(this).css("color", "blue");
    $("#registroS").css("color", "white");
    $("#error").hide(1);
    $("#registro").hide(500);
    $("#inicio").fadeIn(500);
});
$("#registroS").click(function() {
    $(this).css("color", "blue");
    $("#inicioS").css("color", "white");
    $("#inicio").hide(1);
    $("#error").hide(1);
    $("#registro").fadeIn(500);
});