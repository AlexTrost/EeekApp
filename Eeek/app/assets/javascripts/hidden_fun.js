$(document).on("page:change", function() {

	$("#dinosaur_word").mouseover(function() {
		$("#dinosaur_icon").show()
	})

	$("#dinosaur_word").mouseleave(function() {
		$("#dinosaur_icon").hide()
	})


})