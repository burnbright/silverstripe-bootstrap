<% if Me.MoreThanOnePage %>
	<div class="text-center">
		<ul class="pagination">
			<% if Me.NotFirstPage %>
				<li><a class="prev" href="$Me.PrevLink" title="View the previous page"><% _t('Pagination.PREVIOUS','previous') %></a></li>
			<% else %>
				<li class="disabled"><a><% _t('Pagination.PREVIOUS','previous') %></a></li>
			<% end_if %>
			<% loop Me.PaginationSummary %>
				<% if CurrentBool %>
					<li class="active"><a href="$Link" title="view page $PageNum">$PageNum</a></li>
				<% else %>
					<% if Link %>
						<li><a href="$Link" title="view page $PageNum">$PageNum</a></li>
					<% else %>
						<li class="disabled"><a>...</a></li>
					<% end_if %>
				<% end_if %>
			<% end_loop %>
			<% if Me.NotLastPage %>
				<li><a class="next" href="$Me.NextLink" title="View the next page"><% _t('Pagination.NEXT','next') %></a></li>
			<% else %>
				<li class="disabled"><a><% _t('Pagination.NEXT','next') %></a></li>
			<% end_if %>
		</ul>
	</div>
<% end_if %>