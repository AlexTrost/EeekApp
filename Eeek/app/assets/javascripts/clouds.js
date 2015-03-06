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
			$cloud.animate({"left": $page_width}, 90000, "linear");
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


// 	$('.stop').on(click, function() {
// 		alert("hohoh")
//     break cloud1;
//     break cloud2;
//     break cloud3; this doesn't work yet.
//     break cloud4;
//     break cloud5;
// });

})
// ------------------------------------------------------------------------
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


// $(document).ready(function() {
// 	var div_width = "17em";
// 	// var div_count = 15;
// 	var reset_offset = $('body').css("width");

// 	function init() {

// 	    // Set initial position - note that the first div will
// 	    // be off the lefthand side

// 	    for(i=0;i<6;i++) {
// 	        var foo = $('.cloud' + i);
// 	        var left = ''+((i-1)*div_width)+'em';
// 	        foo.css("left", left);
// 	     }

// 	     doMove();
// 	}

// 	function doMove() {
// 	    for(i=0;i<6;i++) {
// 	        var foo = $('.cloud' + i);
// 	        var left = $(foo).css("left");
// 	        var hi = (left + 1) + "em"
// 	        foo.css("left", hi)
// 	        if (left >= reset_offset) {
// 	            foo.css("left", 0);
// 	        }
// 	    }
// 	    setTimeout(doMove, 20);
// 	}

// init();

// })	