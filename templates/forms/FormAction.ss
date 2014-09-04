<% if $UseButtonTag %>
	<button $getAttributesHTML("class") class="btn btn-primary $extraClass" $AttributesHTML >
		<% if $ButtonContent %>$ButtonContent<% else %>$Title<% end_if %>
	</button>
<% else %>
	<input  $getAttributesHTML("class") class="btn btn-primary $extraClass" $AttributesHTML />
<% end_if %>
