<footer class="footer">
	<div class="container">
		<div class="row">
			<% loop Menu(1) %>
				<% if URLSegment != home && URLSegment != contact %>
					<div class="col-md-2 col-sm-4 col-xs-6">
						<h4 class="footer_heading"><a href="$Link">$MenuTitle</a></h4>
						<% if ShowChildren && Children %>
							<ul class="footer_links">
								<% loop Children %>
									<li class="footer_link"><a href="$Link">$MenuTitle</a></li>
								<% end_loop %>
							</ul>
						<% end_if %>
					</div>
				<% end_if %>
			<% end_loop %>
		</div>
	</div>
	<% if SiteConfig.SocialLinks %>
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<% include SocialLinksList %>
				</div>
			</div>
		</div>
	<% end_if %>
	<div class="container copyright_credits">
		<div class="row">
			<div class="col-lg-12">
				<p><small><% include Copyright %> - <% include Credits %></small></p>
			</div>
		</div>
	</div>
</footer>
$BetterNavigator