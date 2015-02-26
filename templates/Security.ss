<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<% require themedCSS("site") %>
<% include Head %>
    <body class="$ClassName">
		<div class="container">
			<div class="col-sm-4 col-sm-push-4">
				<h1 class="pageTitle">$Title</h1>
				$Content
				$Form
			</div>
		</div>
		<script type="text/javascript" src="$ThemeDir/javascript/site.min.js"></script>
    </body>
</html>


