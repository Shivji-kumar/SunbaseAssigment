<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Page</title>
<%@include file="./base.jsp"%>
<%@include file="./navbar.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
	<div class="text-center p-5">
		<h2>${msg }</h2>
		<h2>Something Went Wrong</h2>
		<p>Please correct Data Fill here</p>
	</div>


</body>
</html>