$(document).ready(function() {
    $("footer a, section a, button, input").mouseover(function() {
        $(this).css("text-decoration", "underline");
    });
    $("footer a, section a, button, input").mouseout(function() {
        $(this).css("text-decoration", "none");
    });
    $("nav a").mouseover(function() {
        $(this).css("color", "#00FF2B");
    });
    $("nav a").mouseout(function() {
        $(this).css("color", "white");
    });
})