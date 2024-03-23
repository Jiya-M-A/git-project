<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="./base.jsp"%>
</head>
<body background="https://cdn.wallpapersafari.com/70/58/IoYXgE.jpg">

	<div class="container mt-5" >
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3" style="color: white;">Welcome To Student App</h1>

				<table class="table">
					<thead class="thead-dark" >
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Name</th>
							<th scope="col">Gender</th>
							<th scope="col">Phone Number</th>
							<th scope="col">Mark</th>
							<th scope="col">Favourite Subject</th>
						</tr>
					</thead>

					<tbody style="color: white;">
						<c:forEach items="${students }" var="s">
							<tr>
								<th scope="row">THXS${s.id }</th>
								<td>${s.name }</td>
								<td>${s.gender}</td>
								<td>${s.phno}</td>
								<td>${s.mark}</td>
								<td>${s.favsub}</td>
								<td><a href="delete/${s.id }"> <i
										class="fa-solid fa-trash-can text-danger"
										style="font-size: 20px;"></i></a> <a href="update/${s.id }"> <i
										class="fa-solid fa-pen text-danger" style="font-size: 20px;"></i>
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>

	</div>
	<br>
	<div class="container text-center">
		<a href="savestudent" class="btn btn-outline-success">Add Student Details</a>
	</div>

</body>
</html>