// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
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
