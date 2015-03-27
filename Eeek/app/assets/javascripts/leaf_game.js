$(document).on('ready page:load', function() {

	$(".game_start").on("click", function() {
		$(this).css("background-color", "red")
		newLeaf()
	})

	function newLeaf() {
		$("body").append("<div class='click_leaf'></div>")
		var random_left = Math.floor((Math.random() * 100) + 1);
		$(".click_leaf").css("left", random_left + "em")
		LeafDrop()
	}

	function LeafDrop() {
		$('.click_leaf').animate({"top":"100%"}, 2000)
	}

	$("body").on("click", ".click_leaf", function() {
		newLeaf()
		increaseScore()
	})

	function increaseScore() {
		var score = parseInt($(".score").html())
		$(".score").html(score + 1)
	}
})