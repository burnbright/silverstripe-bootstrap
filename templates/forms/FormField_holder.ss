<% if Title %>
<div id="$Name" class="form-group<% if extraClass %> $extraClass<% end_if %>"">
	<% if Title %><label class="control-label" for="$ID">$Title</label><% else %><label class="control-label" for="$ID"></label><% end_if %>
	<div class="controls">
		$Field
	</div>
	<% if Message %><span class="help-block $MessageType">$Message</span><% end_if %>
</div>
<% else %>
        $Field
<% end_if %>