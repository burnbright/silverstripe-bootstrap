<header class="header">
	<div class="container">
		<div class="row">
			<div class="col-sm-5 col-xs-10 header_logo">
				<a href="home" title="$SiteConfig.Title">
					<% if LogoURL %>
						<img class="img-responsive" src="$LogoURL" alt="$SiteConfig.Title">
					<% else %>
						<h2>$SiteConfig.Title</h2>
					<% end_if %>
				</a>
			</div>	
			<div class="nav-open col-xs-2 visible-xs">
				<button class="btn btn-lg navbar-toggle" data-toggle="collapse"  data-target="#Navigation">
					<i class="ion ion-navicon-round"></i> menu
				</button>
			</div>
			<% if $Menu(1) %>
				<div class="col-sm-7 col-xs-12">
					<nav class="navbar navbar-default navbar-right collapse navbar-collapse" role="navigation" id="Navigation">
						<% include Navigation IncludeChildren=true %>
					</nav>
				</div>
			<% end_if %>
		</div>
	</div>
</header>