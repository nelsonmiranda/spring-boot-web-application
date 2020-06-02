<%@ include file="common/header.jsp" %>
<%@ include file="common/navigation.jsp" %>

<div class="container">

	<h1>Welcome to Login !!!</h1>
	<br />
	<font  color="red">${errorMessage}</font>
	<form action="/welcome" method="POST">
		Nombre: <input type="text" name="name">
		Password: <input type="password" name="password">
		<input type="submit" value="Submit" >
	</form>
	
</div>

<%@ include file="common/footer.jsp" %>