<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<%@include file="./navbar.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h2 class="text-center mb-3">Update Customer Details</h2>
				<form action="${pageContext.request.contextPath }/handle-customer" method="post">
				<input type="hidden" value="${customer.id }" name="id" />
					<div class="form-group">
						<label for="name">Customer First Name</label>
						<input type="text"
							class="form-control" id="name" aria-descibedly="emailHelp"
							name="name" 
							value="${customer.first_name }">
					</div>
					<div class="form-group">
						<label for="name">Customer Last Name</label>
						<input type="text"
							class="form-control" id="name" aria-descibedly="emailHelp"
							name="name" 
							value="${customer.last_name }">
					</div>
					<div class="form-group">
						<label for="name">Customer Street</label>
						<input type="text"
							class="form-control" id="name" aria-descibedly="emailHelp"
							name="name" 
							value="${customer.street }">
					</div>
					<div class="form-group">
						<label for="name">Customer Address</label>
						<input type="text"
							class="form-control" id="name" aria-descibedly="emailHelp"
							name="name" 
							value="${customer.address }">
					</div>
					<div class="form-group">
						<label for="name">Customer City</label>
						<input type="text"
							class="form-control" id="name" aria-descibedly="emailHelp"
							name="name" 
							value="${customer.city }">
					</div>
					<div class="form-group">
						<label for="name">Customer State</label>
						<input type="text"
							class="form-control" id="name" aria-descibedly="emailHelp"
							name="name" 
							value="${customer.state }">
					</div>
					<div class="form-group">
						<label for="name">Customer email</label>
						<input type="text"
							class="form-control" id="name" aria-descibedly="emailHelp"
							name="name" 
							value="${customer.email }">
					</div>
					<div class="form-group">
						<label for="name">Customer Phone Number</label>
						<input type="text"
							class="form-control" id="name" aria-descibedly="emailHelp"
							name="name" 
							value="${customer.phone }">
					</div>					
					
					
					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-warning">Update-Customer</button>
					</div>

				</form>
			</div>
		</div>
	</div>

</body>
</html>