$j(function() {
	
	$j(window).load(function() {
		
	  $j('#slideshow').orbit({
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


