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
				<h2 class="text-center mb-3">Customer Details</h2>
				<form action="handle-customer" method="post">
					<div class="form-group">
						<label for="name">Customer First Name</label><input type="text"
							class="form-control" id="name" aria-descibedly="emailHelp"
							placeholder="First Name" name="first_name" >
					</div>
					<div class="form-group">
						<label for="name">Customer Last Name</label><input type="text"
							class="form-control" id="name" aria-descibedly="emailHelp"
							placeholder="Last Name" name="last_name">
					</div>
					<div class="form-group">
						<label for="name">Customer Street</label><input type="text"
							class="form-control" id="name" aria-descibedly="emailHelp"
							placeholder="Street" name="street">
					</div>
					<div class="form-group">
						<label for="name">Customer Address</label><input type="text"
							class="form-control" id="name" aria-descibedly="emailHelp"
							placeholder="Address" name="address" >
					</div>
					<div class="form-group">
						<label for="name">Customer City</label><input type="text"
							class="form-control" id="name" aria-descibedly="emailHelp"
							placeholder="City" name="city" >
					</div>
					<div class="form-group">
						<label for="name">Customer State</label><input type="text"
							class="form-control" id="name" aria-descibedly="emailHelp"
							placeholder="State" name="state" >
					</div>
					<div class="form-group">
						<label for="name">Customer Email Id</label><input type="email"
							class="form-control" id="name" aria-descibedly="emailHelp"
							placeholder="Email" name="email" >
					</div>
					<div class="form-group">
						<label for="name">Customer Phone Number</label><input type="text"
							class="form-control" id="name" aria-descibedly="emailHelp"
							placeholder="Phone" name="phone" >
					</div>					
					
					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>

				</form>
			</div>
		</div>
	</div>

</body>
</html>