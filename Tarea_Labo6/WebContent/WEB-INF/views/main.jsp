<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SpringJPA</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/save" method = "post">
<input type="submit" value="Agregar un nuevo usuario">
</form>

	<table>
		<tr>
			<th>Name</th>
			<th>Last Name</th>
			<th>Age</th>
			<th>Status</th>
		</tr>
			<c:forEach items="${students}" var="students">
				<tr>
					<td>${students.sName}</td>
					<td>${students.lName}</td>
					<td>${students.sAge}</td>
					<td>${students.activoDelegate}</td>
				</tr>	
			</c:forEach>
	</table>
	
	<br>
	<form action="${pageContext.request.contextPath}/delete" method="post"> 
		
		<label>Eliminar estudiante: </label><input type="text" name="name"><br>
		<input type="submit" value="Eliminar">
		
	</form>
	<br>
	
</body>
</html>