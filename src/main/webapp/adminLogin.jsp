<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="student.css"/>
<title>Insert title here</title>
</head>
<body>
	<div class="shadow-lg p-5 pe-0" style="margin:13% 25%;">
		<div class="me-5 mb-5" style="border-top:1px solid gray">
			<span class="bg-white px-3 fs-4" style="top:-20px; left:210px; position:relative;">Admin Login Portal</span>
			<form action="AdminLogIn" method="post">
					<div class="container-fluid my-4 my-container">
						<input type="email" id="email" class="form-control w-100" name="email" style="height:60px;" required>
						<label for="email" class="form-label px-2">Email Address</label>
					</div>
					<div class="container-fluid my-4 my-container">
						<input type="password" id="password" class="form-control w-100" name="password" style="height:60px;" required>
						<label class="form-label px-2" for="password">Password</label>
					</div>
					<div class="container-fluid my-4 ms-5">
						<div class="form-check">
							<input class="form-check-input fs-4 border-secondary border-2 rounded-0 text-info" type="checkbox" value="" id="flexCheckChecked">
						 	<label class="form-check-label mt-1 fs-5" for="flexCheckChecked">Remember Password</label>
						</div>
					</div>
					<div class="container-fluid my-2">
						
						<input type="submit" class="btn text-white p-3 btn-info w-25 rounded-0 float-end" value="LogIn" id="LogIn" name="LogIn">
						<a class="btn  bg-info text-white me-3 py-3 px-5 rounded-0 float-end" href="homeOfadmin.jsp">Back</a>
						
					</div>	
				</form>
		</div>
	</div>
</body>
</html>