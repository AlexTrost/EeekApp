$(document).ready(function() {
	

	$("body").on("click", "#text_checkbox", function() {
		alert("hi")
		$("#new_upload_form").fadeIn()
		$("#new_text_form").fadeOut()
		$("#upload_checkbox").css("background-color", "yellow")
		$("#text_checkbox").css("background-color", "none")
	})

	$("body").on("click", "#upload_checkbox", function() {
		$("#new_text_form").fadeIn()
		$("#new_upload_form").fadeOut()
		$("#text_checkbox").css("background-color", "yellow")
		$("#upload_checkbox").css("background-color", "none")

	})
	
})