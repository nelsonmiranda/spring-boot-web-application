<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	Add Todo Page For ${name}
	<form action="/add-todo" method="POST">
	Descripci&oacute;n: <input type="text" name="description" >
	<input type="submit" value="Save" >
	</form>
</body>
</html>