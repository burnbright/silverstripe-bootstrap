<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

	<!-- Indicators -->
	<% if ShowIndicators %>
		<ol class="carousel-indicators">
			<% loop Me %>
				<li data-target="#carousel-example-generic" data-slide-to="$Pos"<% if First %> class="active"<% end_if %>></li>
		 	<% end_loop %>
		</ol>
	<% end_if %>

	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox">
		<% loop Me %>
			<div class="item<% if First %> active<% end_if %>">
				<% if Link && Up.LinkSlides %><a href="$Link"><% end_if %>
					<img src="$CroppedImage(550,300).URL" alt="$Title">
				<% if Link && Up.LinkSlides %></a><% end_if %>
				<% if Up.ShowCaptions %>
					<div class="carousel-caption">
						<% if Content %>$Content<% else %>$Title<% end_if %>
					</div>
				<% end_if %>
			</div>
		<% end_loop %>
	</div>
	
	<!-- Controls -->
	<% if ShowControls %>
		<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			<span class="ion ion-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			<span class="ion ion-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	<% end_if %>
</div>