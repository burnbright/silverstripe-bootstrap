<div id="{$dataClass}-carousel" class="carousel slide" data-ride="carousel">

	<!-- Indicators -->
	<% if ShowIndicators %>
		<ol class="carousel-indicators">
			<% loop Me %>
				<li data-target="#{$Top.dataClass}-carousel" data-slide-to="$Pos(0)"<% if First %> class="active"<% end_if %>>
				</li>
		 	<% end_loop %>
		</ol>
	<% end_if %>

	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox">
		<% loop Me %>
			<div class="item<% if First %> active<% end_if %>">
				<% if Link && Up.LinkSlides %><a href="$Link"><% end_if %>
					<img src="$Image.CroppedImage(680,480).URL" alt="$Title">
				<% if Link && Up.LinkSlides %></a><% end_if %>
				<% if Up.ShowCaptions %>
					<div class="carousel-caption">
						<% if Title %>
							<h3>$Title</h3>
						<% end_if %>
						<% if SubTitle %>
						    <p>$SubTitle</p>
						<% end_if %>
					</div>
				<% end_if %>
			</div>
		<% end_loop %>
	</div>
	
	<!-- Controls -->
	<% if ShowControls %>
		<a class="left carousel-control" href="#{$dataClass}-carousel" role="button" data-slide="prev">
			<span class="ion ion-chevron-left glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#{$dataClass}-carousel" role="button" data-slide="next">
			<span class="ion ion-chevron-right glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	<% end_if %>
</div>