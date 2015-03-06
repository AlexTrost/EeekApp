$(document).ready(function() {

	var all_clouds = $(".cloud")
	
	for (var i = 0; i < all_clouds.length; i++) {

		var $cloud = $(all_clouds[i])
		var $cloud_hight = $cloud.height()
		var $page_width = $("body").width()
		
		cloudAnimation()

		function cloudAnimation() {
			$cloud.animate({"left": $page_width}, 10000, "linear");
			$cloud.animate({"opacity": 0}, 10)
			$cloud.animate({"left": -200}, 100)
			$cloud.animate({"opacity": 1}, 10, cloudAnimation)
		}

	}
})