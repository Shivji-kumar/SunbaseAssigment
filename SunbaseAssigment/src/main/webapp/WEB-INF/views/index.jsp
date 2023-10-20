<html>
<head>
<%@include file="./base.jsp"%>
<%@include file="./navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
.back-img {
	background: url('bkg.jpg');
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover {
	background-color: #fcf7f7;
}
</style>
</head>
<body style="background-color: #f7f7f7;">
	<div class="container mt-3 back-img">
		<div class="row">
			<div class="col-md-12">
				<h2 class="text-center mb-3">Welcome to Customer Application</h2>

				<table class="table">
					<thead>
						<tr>
							<!-- <th scope="col">C ID</th> -->
							<th scope="col">First Name</th>
							<th scope="col">Last Name</th>
							<th scope="col">Street</th>							
							<th scope="col">Address</th>
							<th scope="col">City</th>
							<th scope="col">State</th>
							<th scope="col">Email</th>
							<th scope="col">Phone</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${customers }" var="c">
							<tr>
								<%-- <th scope="row">${c.id }</th> --%>
								<td>${c.first_name }</td>
								<td>${c.last_name }</td>
								<td>${c. street}</td>
								<td>${c.address }</td>	
								<td>${c.city }</td>
								<td>${c.state }</td>
								<td>${c.email }</td>
								<td>${c.phone }</td>							
																
								<td><a href="delete/${c.id }"><i
								class="fas fa-minus text-danger" style="font-size: 20px;"></i></a>
									<a href="update/${c.id }"><i
										class="fas fa-pen text-primary" style="font-size: 20px;"></i></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="container text-center">
					<a href="add-customer" class="btn btn-outline-success">Add
						Customer</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
