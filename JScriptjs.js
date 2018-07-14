$(document).ready(function () {
    //$('.js--section-about').waypoint(function (direction) {
    //    if (direction == "down") {
    //        $('nav').addClass('sticky');
    //    } else {
    //        $('nav').removeClass('sticky');
    //    }
    //}, {
    //    offset: '60px;'

    //});

    /*--NAvigation scroll--*/

    $(function() {
        $('a[href*=#]:not([href=#])').click(function () {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.lenght ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.lenght) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });

    });

});