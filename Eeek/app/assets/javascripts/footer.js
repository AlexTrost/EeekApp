$(document).on("page:change", function() {

	$('.footer_about').hover(function() {
		$('.secret_about_message').fadeIn()
	})

	$('.footer_about').mouseleave(function() {
		$('.secret_about_message').fadeOut()
	})

	$('.footer_privacy').hover(function() {
		$('.secret_privacy_message').fadeIn()
	})

	$('.footer_privacy').mouseleave(function() {
		$('.secret_privacy_message').fadeOut()
	})

	$('.footer_terms').hover(function() {
		$('.secret_terms_message').fadeIn()
	})

	$('.footer_terms').mouseleave(function() {
		$('.secret_terms_message').fadeOut()
	})

})