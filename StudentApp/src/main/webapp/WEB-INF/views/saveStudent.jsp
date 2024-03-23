<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="./base.jsp"%>
<title>Insert title here</title>
</head>
<body>
	<div class="mx-auto mt-5" style="width: 500px;">
		<div class="card text-black border-info mb-3"
			style="max-width: 800px;">
			<div class="card-header" style="background-color: blue;">

				<div class="text-center">
					<h1>FILL THE STUDENT DETAILS</h1>
				</div>
			</div>

			<div class="card-body">
				<div class="container">

					<form action="handle" method="post">

						<div class="form-group">
							<label for="exampleInputEmail1">Name</label> <input type="text"
								class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Enter name"
								name="name">
						</div>

						<div>Gender</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender"
								id="inlineRadio1" value="Male"> <label
								class="form-check-label" for="inlineRadio1">Male</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender"
								id="inlineRadio2" value="Female"> <label
								class="form-check-label" for="inlineRadio2">Female</label>
						</div>
						<br>

						<div class="form-group">
							<label for="exampleInputEmail1">Phone Number</label> <input
								type="tel" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Phone Number"
								name="phno">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Mark</label> <input type="text"
								class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Enter mark"
								name="mark">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Favourite Subject </label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Enter mark"
								name="favsub">
						</div>

						<div class="container text-center">
							<a href="${pageContext.request.contextPath }/"
								class="btn btn-outline-danger">Back</a>
							<button type="submit" class="btn btn-primary">Add
								Student</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>