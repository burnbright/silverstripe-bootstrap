$(function(){
	//activate the following scripts for non-touch devices
	if(!Modernizr.touch){ 
		$.stellar({
			horizontalScrolling: false,
			responsive: true
		});
		new WOW().init();
	}
});