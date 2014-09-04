<footer role="contentinfo">
	
	<div class="navigation collapse navbar-collapse">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<% include Navigation %>
				</div>
			</div>
		</div>
	</div>

	<% if SiteConfig.SocialLinks %>
		<div class="container details">
			<div class="row">
				<div class="col-md-4 footbox">
					$SiteConfig.Col1
				</div>
				<div class="col-md-4 footbox">
					$SiteConfig.Col2
				</div>
				<div class="col-md-4">
					<% loop SiteConfig.SocialLinks %>
						<a href="$URL" class="socialicon socialicon-$Identifier" title="$Name" target="_blank"></a>
					<% end_loop %>
					
					<div class="Footer_Illustration"></div>

				</div>
			</div>
		</div>
	<% end_if %>

	<div class="container copyright">
		<div class="row">
			<div class="col-lg-12">
				<p><small>&copy; Copyright {$Now.Year}. {$SiteConfig.Title}. All rights reserved.</small></p>
			</div>
		</div>
	</div>
	<div class="container credits">
		<div class="row">
			<div class="col-lg-12">
				<p><small>
					<span class="credit"><a href="http://www.burnbright.net">website development</a> by <a href="http://www.burnbright.net">Burnbright</a></span>,
					<span class="credit"><a href="http://www.edendesign.co.nz">website design</a> by <a href="http://www.edendesign.co.nz">Eden Design</a></span>
				</small></p>
			</div>
		</div>
	</div>

</footer>