var $sidebar = $("#side_bar")
$sidebar.hide("slide", { direction: "right" }, 1000);
 $("#upload_button").html("New Upload")


 if ( $("body").hasClass("dashboard_controller") ) {
 	alert("hi")
	$(".nothing_yet").remove()
		$(".personal_ul").append("<%= j render(:partial => 'dashboard/thumbnail', locals: {upload: @upload}) %>");
	}
	
