<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Account</title>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="student.css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
</head>
<body>
	<main class="container shadow-lg w-50 justify-content-center ms-5" style=" position:relative; margin-top:7%;  left:22%;">
		<div class="row">
			<div class="col-12 p-5">
				<span class="fs-1 text-primary mb-0 mt-3" style="margin-left:20%;"> Reset Password</span>
				<form action="resetPage.jsp" method="get">
					<div class="container-fluid my-4 mb-0 my-container ">
						<input type="email" id="email" class="form-control w-75" name="email" style="height:60px; margin-left:10%;" required>
						<label for="email" class="form-label px-2" style="margin-left:11%;">Email Address</label>
					</div>
					<p class="text-secondary mb-4 text-secondary mt-2" style="margin-left:100px;">You will receive an email with a link to reset your password</p>
					<div class="container-fluid d-inline w-100">
						<button type="submit" class="btn  bg-info text-white me-5 fs-4 p-2 rounded-0 float-end" name="register">Reset Password</button>
						<a class="text-info ms-5 mt-0 p-3 w-25 rounded-0 text-decoration-none fs-5 float-start" href="homeOfstudent.jsp">Sign in instead</a>
					</div>	
				</form>
			</div>
		</div>	
	</main>
</body>
</html>