$(document).ready(function(){
    $('.owl-carousel').owlCarousel({
        loop:true,
        margin:10,
        navText: [ '<img src="img/icono40x40.png" alt="" class="img-responsive">' , '<img src="img/icono40x40.png" alt="" class="img-responsive">' ],
        responsiveClass:true,
        nav: true,
        responsive:{
            0:{
                items:1,
                nav:true
            },
            600:{
                items:3,
                nav:false
            },
            1000:{
                items:5,
                nav:true,
                loop:false
            }
        }
    })

});
