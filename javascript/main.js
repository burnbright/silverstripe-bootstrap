$(function(){
	//activate the following scripts for non-touch devices
	if(!Modernizr.touch){ 
		$.stellar({
			horizontalScrolling: false,
			responsive: true
		});
		new WOW().init();
	}

	//submit a form automatically when input(s) are changed
	$("form.submitonchange").each(function(){
		var $form = $(this);
		$form.find(":input").change(function(){
			$form.submit();

		})
		$form.find(".Actions").hide();
	});

});