$(document).ready(function() {

	$(".render_form_target_div").on("submit", "#new_contact_form", function(){
		$(".new_contact_form_div").remove()
	})

	$(".render_form_target_div").on("submit", "#new_upload_form", function(){
		$(".new_upload_form_div").remove()
	})

	})
