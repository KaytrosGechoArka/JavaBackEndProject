<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Page</title>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="student.css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
</head>
<body>
	<main class="container shadow-lg w-75 justify-content-center ms-5 mb-5" style=" position:relative; margin-top:10%;  left:8%;">
		<div class="row">
			<div class="col-sm-6 justify-content-center p-5">
				<img alt="Student" src="images/student.jpg" width="500px">
			</div>
			<div class="col-lg-6 p-5">
				<form action="StudentLogIn" method="post">
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
					<div class="container-fluid my-2  float-end">
						<a class="text-info text-decoration-none fs-5" href="studentRestpassword.jsp">Forgot Password?</a>
						<input type="submit" class="btn text-white btn-info w-25 rounded-0 float-end" value="LogIn" id="LogIn" name="LogIn">
					</div>	
				</form>
			</div>
		</div>		
	</main>
	<div class="container-fluid d-inline justify-content-center mt-5" style="left:35%;">
		<span class="fs-5 mt-5">Need an account?<a href="createAccount.jsp" class="text-decoration-none ms-1 me-1 fs-4">Sign Up!</a>Or<a class="ms-1 fs-4 fst-italic fw-light text-decoration-none" href="home.jsp">Back Home</a></span>
	</div>
</body>
</html>