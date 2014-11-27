$(function(){
	if(!Modernizr.touch){ 
		$.stellar({
			horizontalScrolling: false,
			responsive: true
		});
	}
	new WOW().init();
});