$(function(){
	if(!Modernizr.touch){ 
		$.stellar({
			horizontalScrolling: false,
			responsive: true
		});
	}
});