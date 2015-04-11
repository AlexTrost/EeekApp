$(document).on("page:change", function() {

	$("#signup_form_display_button").on("click", function() {
		if ($("#signup_form_display_button").html() === "Sign Up") {
			$(".signup_form").slideDown()
			$("#signup_form_display_button").html("Hide Form")
		} else {
			$(".signup_form").slideUp()
			$("#signup_form_display_button").html("Sign Up")
		}	
	})


})
