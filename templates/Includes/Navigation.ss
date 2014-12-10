<ul class="nav navbar-nav nav-hover">
	<% loop $Menu(1) %>
		<% if Children && IncludeChildren %>
			<li class="<% if isCurrent || isSection %>active<% end_if %> $LinkingMode dropdown">
				<a href="$Link" class="dropdown-toggle">$MenuTitle.XML <span class="caret"></span></a>
				<ul class="dropdown-menu" role="menu">
					<% loop Children %>
						<li class="<% if isCurrent || isSection %>active<% end_if %>">
							<a href="$Link" title="$Title.XML">
								$MenuTitle.XML
							</a>
						</li>
					<% end_loop %>
				</ul>
			</li>
		<% else %>
			<li class="<% if isCurrent || isSection %>active<% end_if %> $LinkingMode <% if URLSegment = home %>hidden-xs hidden-sm<% end_if %>">
				<a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
			</li>
		<% end_if %>
	<% end_loop %>
</ul>