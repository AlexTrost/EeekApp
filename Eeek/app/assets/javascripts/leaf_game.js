$(document).on('page:change', function() {

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
		$('.click_leaf').animate({"top":"100%"}, 6000)
		if ($('.click_leaf').css("margin-bottom") === "0px") {
			newLeaf()
		}
	}

	$("body").on("click", ".click_leaf", function() {
		$(".click_leaf").remove()
		newLeaf()
		increaseScore()
	})

	function increaseScore() {
		var score = parseInt($(".score").html())
		$(".score").html(score + 1)
	}
})