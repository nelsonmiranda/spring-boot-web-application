<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

	<h1>Welcome to Login !!!</h1>
	<br />
	<font  color="red">${errorMessage}</font>
	<form action="/welcome" method="POST">
		Nombre: <input type="text" name="name">
		Password: <input type="password" name="password">
		<input type="submit" value="Submit" >
	</form>

</body>
</html>