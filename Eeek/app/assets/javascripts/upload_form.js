$(document).ready(function() {
	

	$("body").on("click", "#text_checkbox", function() {
		$("#new_text_form").fadeIn()
		$("#new_upload_form").hide()
		$("#text_checkbox").css("background-color", "yellow")
		$("#upload_checkbox").css("background-color", "transparent")
	})

	$("body").on("click", "#upload_checkbox", function() {
		$("#new_upload_form").fadeIn()
		$("#new_text_form").hide()
		$("#upload_checkbox").css("background-color", "yellow")
		$("#text_checkbox").css("background-color", "transparent")

	})



	
    var $quotes = $("#upload_carousel p");
    
    for (var i = 0; i < $quotes.length; i++) {
    	var $quote = $($quotes[i])
	    var $numWords = $quote.text().split(" ").length;
		    if (($numWords >= 1) && ($numWords < 25)) {
		        $quote.css("font-size", "50px");
		    }
		    else if (($numWords >= 25) && ($numWords < 50)) {
		        $quote.css("font-size", "40px");
		    }
		    else if (($numWords >= 50) && ($numWords < 100)) {
		        $quote.css("font-size", "30px");
		    }
		    else {
		        $quote.css("font-size", "25px");
		    }
    }
	
	
})