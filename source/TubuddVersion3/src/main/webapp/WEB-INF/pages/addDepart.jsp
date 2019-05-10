<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add new Department</title>
</head>
<body>
<h1>Add new department</h1>
<form:form action="add" modelAttribute="dept">
	<div>
		<label>Name: </label>
		<form:input path="deptName"/>
	</div>
	<div>
		<label>Location: </label>
		<form:input path="location"/>
	</div>
	<input type="submit" />
</form:form>
</body>
</html>