$(document).on('page:change', function() {

  function carouselMagic(id, frames) {
    var owl = $(id);
    var items = frames
    owl.owlCarousel({
        items : items, //10 items above 1000px browser width
        itemsDesktop : [1000,1], //5 items between 1000px and 901px
        itemsDesktopSmall : [900,1], // betweem 900px and 601px
        itemsTablet: [600,1], //2 items between 600 and 0
        itemsMobile : false // itemsMobile disabled - inherit from itemsTablet option
    });

    owl.trigger('owl.play',20500)
    // Custom Navigation Events
    $(".next").click(function(){
      owl.trigger('owl.next');
    })
    $(".prev").click(function(){
      owl.trigger('owl.prev');
    })
    $(".play").click(function(){
      owl.trigger('owl.play',2200); //owl.play event accept autoPlay speed as second parameter
    })
    $(".stop").click(function(){
      owl.trigger('owl.stop');
    })

    $(".item").hover( handlerIn, handlerOut )

    function handlerIn() {
      owl.trigger('owl.stop');
      $(this).css("border", "8px blue solid")
    }

    function handlerOut() {
      owl.trigger('owl.play',2500)
      $(this).css("border", "0px blue solid")
    }
  }

  function fontSize() {
    var wi = $(window).width();
    var $quotes = $("#upload_carousel p");
    for (var i = 0; i < $quotes.length; i++) {
      var $quote = $($quotes[i])
      var $numWords = $quote.text().split(" ").length;
        if (($numWords >= 1) && ($numWords < 25) && (wi > 720)) {
            $quote.css("font-size", "45px");
        }
        else if (($numWords >= 1) && ($numWords < 25) && (wi <= 720)) {
            $quote.css("font-size", "25px");
        }
        else if (($numWords >= 25) && ($numWords < 50) && (wi > 720)) {
            $quote.css("font-size", "35px");
        }
        else if (($numWords >= 25) && ($numWords < 50) && (wi <= 720)) {
            $quote.css("font-size", "20px");
        }
        else if (($numWords >= 50) && ($numWords < 100) && (wi > 720)) {
            $quote.css("font-size", "25px");
        }
        else if (($numWords >= 50) && ($numWords < 100) && (wi <= 720)) {
            $quote.css("font-size", "15px");
        }
        else if (wi > 720) {
            $quote.css("font-size", "20px");
        }
        else {
            $quote.css("font-size", "12px");
        }
    }
  }

  function getRidOfDots() {
    $(".owl-page").css("display", "none")
  }

fontSize()
carouselMagic("#upload_carousel", 1)
getRidOfDots()
});