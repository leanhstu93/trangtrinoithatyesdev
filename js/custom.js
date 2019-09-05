//opentab
function openCity(evt, cityName) {
    var i, x, tablinks;
    x = document.getElementsByClassName("city");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < x.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
$(document).ready(function(){
    var rightboxtop,rightboxbot,mytop,rightstickyheight;
    var ismobile = $(window).width() < 768;
    if((!ismobile)){
        $(window).scroll(function () {
            mytop = $(window).scrollTop();
            //console.log(mytop);
            rightstickyheight = $('#rightsticky').height();
            rightboxtop = $('#rightstickyanchor').position().top - 71;
            rightboxbot = $('.site-foot').position().top - rightstickyheight - 71;
            //floating right box
            if (mytop >= rightboxtop) {
                if (mytop <= rightboxbot - 51) {
                    if($('#rightsticky').css('position') != 'fixed') {$('#rightsticky').css({ 'position': 'fixed', 'top': '40px' }).width('100%');}
                }
                else
                {
                    if($('#rightsticky').css('position') != 'relative') {$('#rightsticky').css({ 'position': 'relative', 'top': rightboxbot + 'px' });}
                }
            }
            else {
                if($('#rightsticky').css('position') != '') {$('#rightsticky').css('position', '');}
            }
        });
    }

    $("body").on('click', '.wrp-rating > span > .rating-symbol', function(){
        $('.wrp-rating > span > .rating-symbol').unbind('click');
        var index = $(this).index() + 1;
        var point = index * 2;
        var type = $('.ta-js-rating').data('type');
        var object_id = $('.ta-js-rating').data('id');
        if($('.wrp-rating').hasClass('not-checked')){
            var star = $(this).attr('for');     
            var dataString = 'point=' + point + '&type=' + type + '&object_id='+object_id;
            $.ajax({
                type: "GET",
                url: "/site/rating",               
                cache: false,
                dataType: 'json',
                data: dataString,
                success: function(resp) {
                    $('.ta-js-rating').rating('rate',resp.value);
                     $('.ta-js-val-rating').html(resp.value);
                    $('.ta-js-count-rating').html(resp.count);
                    $('.wrp-rating').removeClass('not-checked');                       
                }
            });     
        }
        return false;
    });


    $(".ta-js-rating").rating({
        filled: 'fa fa-star fa-2x',
        empty: 'fa fa-star-o fa-2x',
        start: 0,
        step:2,
        stop:10
    });

    $(".Ta__js-slider-why").owlCarousel({
        autoplay:true,
        smartSpeed : 900,
        navigation : true, // Show next and prev buttons
        paginationSpeed : 70000,
        loop:true,
        nav: true,
        items:5,
        margin:20,
        responsive : {
            // breakpoint from 0 up
            0 : {
                items : 1,
            },
            // breakpoint from 480 up
            480 : {
                items : 2,
            },
            // breakpoint from 768 up
            768 : {
                items : 3,
            },
            1020 : {
                items : 5,
            }
        }
    });

    $(".Ta__js-slider-pp").owlCarousel({
        autoplay:true,
        smartSpeed : 900,
        navigation : true, // Show next and prev buttons
        paginationSpeed : 70000,
        loop:true,
        nav: true,
        items:4,
        margin:20,
        responsive : {
            // breakpoint from 0 up
            0 : {
                items : 1,
            },
            // breakpoint from 480 up
            480 : {
                items : 2,
            },
            // breakpoint from 768 up
            768 : {
                items : 3,
            }
        }
    });

    $(".Ta__js-slider-kienthuc").owlCarousel({
        autoplay:true,
        smartSpeed : 900,
        navigation : true, // Show next and prev buttons
        paginationSpeed : 70000,
        loop:true,
        items:1,
        dots: true,
        margin:20,
    });
    //menu fix
    jQuery(document).scroll( function(){
        scoll_top = jQuery(document).scrollTop();
        height_header= jQuery('.wrp-menu').height();
        if( scoll_top >= height_header ){
            jQuery(".wrp-menu").addClass("menufix");
        }else{
            jQuery(".wrp-menu").removeClass("menufix");
        }
    });
});