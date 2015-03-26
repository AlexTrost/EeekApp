$(document).on('ready page:load', function() {

	$(".game_start").on("click", function() {
		$(this).css("background-color", "red")
		$(body).append("<div class='click_leaf'></div>")
	})

})