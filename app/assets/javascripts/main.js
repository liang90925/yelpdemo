$(function() {
	//Cache the window object
	var $window = $(window);

	//Parallax background effect
	$('section[data-type="background"]').each(function() {

		var $bgobj = $(this); //assign the background object;

		$(window).scroll(function() {
			//scroll the background at var speed
			//the ypos is a negative value because we're scrolling it UP!
			var ypos = -($window.scrollTop()/ $bgobj.data('speed'));
			
			//Put together our final background position
			var coords = '50%' + ypos + 'px';

			//move the background
			$bgobj.css({ backgroundPosition: coords });
		}); //end window
	});
});