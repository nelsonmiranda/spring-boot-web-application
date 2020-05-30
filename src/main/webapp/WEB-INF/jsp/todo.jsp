<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
	
	<form action="/add-todo" method="POST">
		<fieldset>
			<label>Descripci&oacute;n</label>
			<input type="text" name="description" class="form-control" required="required" placeholder="Type the description">
		</fieldset>
		
		<input type="submit" value="Save" class="btn btn-success" >
	</form>

</div>
	
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>