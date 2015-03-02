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
	
	
})