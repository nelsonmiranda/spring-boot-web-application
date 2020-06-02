<%@ include file="common/header.jsp" %>
<%@ include file="common/navigation.jsp" %>

<div class="container">
	<table class="table table-striped">
		<caption>Your todos are</caption>
		<thead>
			<tr>
				<th>Description</th>
				<th>Target date</th>
				<th>Is done</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.desc}</td>
					<td><fmt:formatDate value="${todo.targetDate}"
							pattern="dd/MM/yyyy" /></td>
					<td>${todo.done}</td>
					<td><a class="btn btn-success"
						href="/update-todo?id=${todo.id}">Update</a></td>
					<td><a class="btn btn-warning"
						href="/delete-todo?id=${todo.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<div>
		<a class="btn btn-info" href="/add-todo">Add Todo</a>
	</div>
</div>

<%@ include file="common/footer.jsp" %>