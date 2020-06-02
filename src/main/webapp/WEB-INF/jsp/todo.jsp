<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
	
	<form:form method="POST" modelAttribute="todo">
		<form:hidden path="id"/>
		<fieldset>
			<form:label path="desc" >Descripci&oacute;n</form:label>
			<form:input path="desc" type="text"  class="form-control" required="required" placeholder="Type the description" />
			<form:errors path="desc" cssClass="text-warning" />
		</fieldset>
		
		<fieldset>
			<form:label path="targetDate" >Target date</form:label>
			<form:input path="targetDate" type="text"  class="form-control" required="required" placeholder="Type the description" />
			<form:errors path="targetDate" cssClass="text-warning" />
		</fieldset>
		
		<input type="submit" value="Save" class="btn btn-success" >
	</form:form>

</div>
	
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js" ></script>
	
	<script type="text/javascript">
		$('#targetDate').datepicker(
			{ format: 'dd/mm/yyyy'}
		 );
	</script>
	
</body>
</html>