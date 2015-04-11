$(document).on("page:change", function(){

	$(".menu_icon").mouseenter(function() {
		$("nav ul li").slideDown()
	})

		$("nav ul").mouseleave(function() {
			if ( $(".menu_icon").css("display") === "block" ) {
					$("nav ul li").slideUp()
			}
		})


})