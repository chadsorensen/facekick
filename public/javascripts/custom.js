$(function() {
	
	$(window).load(function() {
		
	  $('#slideshow').orbit({
		animationSpeed: 600,
		advanceSpeed: 5000,  
		captions: true, 			
		captionAnimation: 'fade', 		
		captionAnimationSpeed: 400,
		bullets: true,
		directionalNav: false
		});
		
	});
	
});


