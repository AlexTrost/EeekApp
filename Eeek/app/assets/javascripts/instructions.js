$(document).on("ready page:load", function() {
	var left = $('#upload_button').position().left
	$('.instructions_wrapper').css('margin-left', left)
	$('.instructions_div::after').css('margin-left', left)
})