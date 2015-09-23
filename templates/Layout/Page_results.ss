<div class="container content">
	<div class="row">
		<div class="col-lg-9 typography" role="main">
			<h1 class="pagetitle">$Title</h1>
			<% if Results %>
				<table class="table">
					<% loop Results %>
						<tr class="$EvenOdd">
							<td>
								<a class="searchResultHeader" href="$Link">
									
									<% if MenuTitle %>$MenuTitle<% else %>$Title<% end_if %>
									
								</a>
								<p>$Content.ContextSummary(200)</p>
							</td>
						</tr>
					<% end_loop %>
				</table>

				<% if Results.MoreThanOnePage %>
					<% with Results %>
						<% include Pagination %>
					<% end_with %>
				<% end_if %>

			<% else %>
				<p>No results found, search again:</p>
				$SearchForm.addExtraClass(form-inline)
			<% end_if %>
		</div>
		<div class="col-lg-3" role="complementary">
			<% include SideBar %>
		</div>
	</div>
</div>