<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration Success Page</title>
<link rel="stylesheet" href="css/bootstrap.css"/>
</head>
<body>
	<div class="shadow-lg container justify-content-center p-5 w-50" style=" margin-top:10%;">
		<h1 class="text-secondary fs-3 fw-lighter mb-4" style=" margin-left:12%;">Account Existed With 
			<span class="fs-5 text-primary">
				<%= request.getSession().getAttribute("email") %>
			</span> 
			Email!
		</h1>
		<span class="fs-4" style=" margin-left:22%;">
			<a href='homeOfstudent.jsp' class="text-decoration-none text-primary">Sign in instead</a> 
		</span>
	</div>
</body>
</html>