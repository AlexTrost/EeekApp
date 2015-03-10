$(document).ready(function(){

	$(".menu_icon").mouseenter(function() {
		$("nav ul li").slideDown()
	})

	$("nav ul").mouseleave(function() {
		$("nav ul li").slideUp()
	})


})