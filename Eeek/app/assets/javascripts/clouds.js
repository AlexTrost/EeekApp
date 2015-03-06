$(document).ready(function() {


	function cloud1() {
		var $cloud = $(".cloud1")
		var $cloud_hight = $cloud.height()
		var $page_width = $("body").width()
		cloudAnimation()
		function cloudAnimation() {
			$cloud.animate({"left": $page_width}, 180000, "linear");
			$cloud.animate({"opacity": 0}, 10)
			$cloud.animate({"left": -200}, 100)
			$cloud.animate({"opacity": 1}, 10, cloudAnimation)
		}
	}

	function cloud2() {
		var $cloud = $(".cloud2")
		var $cloud_hight = $cloud.height()
		var $page_width = $("body").width()
		cloudAnimation()
		function cloudAnimation() {
			$cloud.animate({"left": $page_width}, 100000, "linear");
			$cloud.animate({"opacity": 0}, 10)
			$cloud.animate({"left": -200}, 100)
			$cloud.animate({"opacity": 1}, 10, cloudAnimation)
		}
	}

	function cloud3() {
		var $cloud = $(".cloud3")
		var $cloud_hight = $cloud.height()
		var $page_width = $("body").width()
		cloudAnimation()
		function cloudAnimation() {
			$cloud.animate({"left": $page_width}, 120000, "linear");
			$cloud.animate({"opacity": 0}, 10)
			$cloud.animate({"left": -200}, 100)
			$cloud.animate({"opacity": 1}, 10, cloudAnimation)
		}
	}

	function cloud4() {
		var $cloud = $(".cloud4")
		var $cloud_hight = $cloud.height()
		var $page_width = $("body").width()
		cloudAnimation()
		function cloudAnimation() {
			$cloud.animate({"left": $page_width}, 190000, "linear");
			$cloud.animate({"opacity": 0}, 10)
			$cloud.animate({"left": -200}, 100)
			$cloud.animate({"opacity": 1}, 10, cloudAnimation)
		}
	}

	function cloud5() {
		var $cloud = $(".cloud5")
		var $cloud_hight = $cloud.height()
		var $page_width = $("body").width()
		cloudAnimation()
		function cloudAnimation() {
			$cloud.animate({"left": $page_width}, 900g00, "linear");
			$cloud.animate({"opacity": 0}, 10)
			$cloud.animate({"left": -200}, 100)
			$cloud.animate({"opacity": 1}, 10, cloudAnimation)
		}
	}

	cloud1()
	cloud2()	
	cloud3()	
	cloud4()	
	cloud5()	

})




// $(document).ready(function() {

// 	var all_clouds = $(".cloud")
	
// 	for (var i = 0; i < all_clouds.length; i++) {

		
// 		cloudAnimation(i)

// 		function cloudAnimation(i) {
// 		var num = Math.floor(Math.random() * (40 - 900) + 3)
// 		var speed = num * num
// 		var $cloud = $(all_clouds[i])
// 		// var cloud_number = $cloud.attr('class').slice(-1)
// 		console.log($cloud.attr('class'))
// 		var $cloud_hight = $cloud.height()
// 		var $page_width = $("body").width()
// 			$cloud.animate({"left": 1000}, speed, "linear");
// 			$cloud.animate({"opacity": 0}, 10)
// 			$cloud.animate({"left": -200}, 100)
// 			$cloud.animate({"opacity": 1}, 10, cloudAnimation(cloud_number))
// 		}

// 	}
// })