<% if Title %>
<div id="$Name" class="form-group<% if extraClass %> $extraClass<% end_if %>">
	<% if Title %><label class="control-label" for="$ID">$Title <% if Required %><span class="required-label">&#42;</span><% end_if %></label><% else %><label class="control-label" for="$ID"></label><% end_if %>
	<div class="controls">
		$Field
	</div>
	<% if Message %><p class="help-block $MessageType">$Message</p><% end_if %>
</div>
<% else %>
	$Field
<% end_if %>