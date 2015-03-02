$(document).ready(function() {
	

	$("#text_checkbox").on("click", function() {
		alert("hi")
		$("#new_upload_form").fadeIn()
		$("#new_text_form").fadeOut()
		$("#upload_checkbox").css("background-color", "yellow")
		$("#text_checkbox").css("background-color", "none")
	})

	$(" #upload_checkbox").on("click", function() {
		$("#new_text_form").fadeIn()
		$("#new_upload_form").fadeOut()
		$("#text_checkbox").css("background-color", "yellow")
		$("#upload_checkbox").css("background-color", "none")

	})
	
})