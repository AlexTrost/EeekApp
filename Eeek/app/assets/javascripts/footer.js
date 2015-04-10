$(document).on("ready", function() {

	$('.footer_about').on("hover", function() {
		$('.secret_about_message').fadeIn()
	})

$('.footer_about').mouseleave(function() {
		$('.secret_about_message').fadeOut()
	})

	$('.footer_privacy').on("hover", function() {
		$('.secret_privacy_message').fadeIn()
	})

$('.footer_privacy').mouseleave(function() {
		$('.secret_privacy_message').fadeOut()
	})

	$('.footer_contact').on("hover", function() {
		$('.secret_contact_message').fadeIn()
	})

$('.footer_contact').mouseleave(function() {
		$('.secret_contact_message').fadeOut()
	})

	$('.footer_terms').on("hover", function() {
		$('.secret_terms_message').fadeIn()
	})

$('.footer_terms').mouseleave(function() {
		$('.secret_terms_message').fadeOut()
	})

})