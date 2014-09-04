<ul id="$ID" class="list-unstyled $extraClass"<% if Description %> title="$Description"<% end_if %>>
	<% if Options.Count %>
		<% loop Options %>
			<li class="checkbox $Class">
				<label for="$ID"><input id="$ID" name="$Name" type="checkbox" value="$Value"<% if isChecked %> checked="checked"<% end_if %><% if isDisabled %> disabled="disabled"<% end_if %> /> $Title</label>
			</li>
		<% end_loop %>
	<% else %>
		<li>No options available</li>
	<% end_if %>
</ul>
