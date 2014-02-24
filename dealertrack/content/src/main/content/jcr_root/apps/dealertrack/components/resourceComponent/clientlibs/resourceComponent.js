$(document).ready(function() {
	function move_div() {
		window_width = $(window).width();
		obj_width = $('.resourceDiv').width();
		
		$('.resourceDiv').css('left', (window_width / 2) - (obj_width / 2));
	}
	
	move_div();
});