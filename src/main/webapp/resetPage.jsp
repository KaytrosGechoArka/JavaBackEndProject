<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String email=request.getParameter("email");
%>      
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
				<form action="Reset" method="post">
					<div class="container-fluid my-4 mb-0 my-container ">
						<input type="password" id="email" class="form-control w-75" name="newpassword" placeholder="New Password" style="height:60px; margin-left:10%;" required>
					</div>
					<%
						request.getSession().setAttribute("email",email);
					%>
					<div class="container-fluid my-4 mb-0 my-container ">
						<input type="password" id="email" class="form-control w-75" name="confirm" placeholder="Confirm Password" style="height:60px; margin-left:10%;" required>
					</div>	
					<button type="submit" class="btn  bg-info text-white mt-3 fs-4 p-2 px-4 rounded-0 float-end" name="reset" style="margin-right:17%;">Submit</button>
					<a class="text-info  mt-0 p-3 w-25 rounded-0 text-decoration-none fs-5 float-start" href="homeOfstudent.jsp" style="margin-left:10%;">Sign in instead</a>
				</form>
			</div>
		</div>	
	</main>
</body>
</html>