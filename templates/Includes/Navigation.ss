<ul class="nav navbar-nav">
	<% loop $Menu(1) %>
		<li class="<% if isCurrent || isSection %>active<% end_if %>">
			<% if Children && IncludeChildren %>
				<li class="dropdown">
					<a href="$Link" class="dropdown-toggle" data-toggle="dropdown">$MenuTitle.XML <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<% loop Children %>
							<li>
								<a href="$Link" title="$Title.XML">
									$MenuTitle.XML
								</a>
							</li>
						<% end_loop %>
					</ul>
				</li>
			<% else %>
				<a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
			<% end_if %>
		</li>
	<% end_loop %>
</ul>