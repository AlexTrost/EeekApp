$(document).ready(function() {
	


	function renderTextForm() {
		$("body").on("click", "#text_checkbox", function() {
			$("#new_text_form").fadeIn()
			$("#new_upload_form").hide()
			$("#text_checkbox").css("background-color", "yellow")
			$("#upload_checkbox").css("background-color", "transparent")
		})
	}	

	function renderUploadForm() {
		$("body").on("click", "#upload_checkbox", function() {
			$("#new_upload_form").fadeIn()
			$("#new_text_form").hide()
			$("#upload_checkbox").css("background-color", "yellow")
			$("#text_checkbox").css("background-color", "transparent")
		})
	}	

	function formSideMenu() {
		$("#upload_button").on("click" function() {
			var $sidebar = $("#side_bar")
			if ($sidebar.is(":visable")) {
				$sidebar
			} else {
				$sidebar
			}
		})
	}
	
	
	renderUploadForm()
	renderTextForm()
})