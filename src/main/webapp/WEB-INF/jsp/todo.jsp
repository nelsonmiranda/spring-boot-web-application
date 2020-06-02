<%@ include file="common/header.jsp" %>
<%@ include file="common/navigation.jsp" %>

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


<%@ include file="common/footer.jsp" %>