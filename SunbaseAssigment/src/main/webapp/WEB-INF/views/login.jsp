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
				<h2 class="text-center mb-3">Login page</h2>
				<form action="login" method="post">
					<div class="form-group">
						<input type="text"
							class="form-control" id="name" aria-descibedly="emailHelp"
							placeholder="Login Id" name="id" >
					</div>	
					<div class="form-group">
						<input type="text"
							class="form-control" id="name" aria-descibedly="emailHelp"
							placeholder="Password" name="pass" >
					</div>				
					
					<div class="container text-center">
						
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>

				</form>
			</div>
		</div>
	</div>

</body>
</html>