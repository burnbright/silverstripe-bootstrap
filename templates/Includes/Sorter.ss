<% if Sorter %>
<div class="sorter">
	<div class="btn-group">
		<span class="sorter_label input-group-addon">Sort</span>
		<div class="input-group-btn">
			<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
				$Sorter.CurrentOption.Title <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<% loop Sorter.Sorts %>
					<li><a href="$Link" title="sort by $Title">$Title</a></li>
				<% end_loop %>
			</ul>
		</div>
	</div>
</div>
<% end_if %>
