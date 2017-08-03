<% if IncludeFormTag %>
<form class="form" $AttributesHTML>
<% end_if %>
	<% if Message %>
	<div id="{$FormName}_error" class="alert message $MessageType <% if $MessageType == 'good' %>alert-success<% else_if $MessageType == 'bad' %>alert-danger<% else_if $MessageType == 'warning' %>alert-warning<% end_if %>">
		$Message
	</div>
	<% else %>
	<div id="{$FormName}_error" class="alert message $MessageType" style="display: none"></div>
	<% end_if %>

	<fieldset>
		<% if Legend %><legend>$Legend</legend><% end_if %>
		<% loop Fields %>
			$FieldHolder
		<% end_loop %>
	</fieldset>

	<% if Actions %>
		<div class="Actions">
			<% loop Actions %>
				$Field
			<% end_loop %>
		</div>
	<% end_if %>
<% if IncludeFormTag %>
</form>
<% end_if %>
