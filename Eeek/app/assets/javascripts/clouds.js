$(document).ready(function() {

	var all_clouds = $(".cloud")
	
	for (var i = 0; i < all_clouds.length; i++) {

		
		cloudAnimation(i)

		function cloudAnimation(i) {
		var num = Math.floor(Math.random() * (40 - 900) + 3)
		var speed = num * num
		var $cloud = $(all_clouds[i])
		// var cloud_number = $cloud.attr('class').slice(-1)
		console.log($cloud.attr('class'))
		var $cloud_hight = $cloud.height()
		var $page_width = $("body").width()
			$cloud.animate({"left": 1000}, speed, "linear");
			$cloud.animate({"opacity": 0}, 10)
			$cloud.animate({"left": -200}, 100)
			$cloud.animate({"opacity": 1}, 10, cloudAnimation(cloud_number))
		}

	}
})