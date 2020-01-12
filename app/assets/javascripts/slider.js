
jQuery(document).on('turbolinks:load', function(){

  jQuery('.slide-image').slick({
        dots: true,
        autoplay: true,
        autoplaySpeed: 6000,
        speed: 800,
        // variableWidth: true,
        // font-size: 14px !important;
        // color: rgb(60, 60, 60) !important;
        prevArrow:'<i class="fa fa-angle-left arrow arrow-left"></i>',
        nextArrow:'<i class="fa fa-angle-right arrow arrow-right"></i>'
    });

});