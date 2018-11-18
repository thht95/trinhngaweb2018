$(document).ready(function () {
    // Show/Hide Sticky "Go to top" button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 10) {
            $(".gotop").fadeIn(200);
        }
        else {
            $(".gotop").fadeOut(200);
        }
    });
    // Scroll Page to Top when clicked on "go to top" button
    $(".gotop").click(function (event) {
        $('html, body').animate({
            scrollTop: $("#top").offset().top
        }, 500);
    });
});