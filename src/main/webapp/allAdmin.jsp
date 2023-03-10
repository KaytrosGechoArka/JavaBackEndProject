<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css">
<script src="https://kit.fontawesome.com/981f9b3d7a.js" crossorigin="anonymous"></script>
</head>
<body>
	  <ul class=" navbar justify-content-end collapse" id="navbarToggleExternalContent" style="margin-bottom:0px; background-color:LightGray;">
		<li class="nav">
			<a class="text-white mx-0 my-3 fs-5" href="AdminLogIn" style="text-decoration:none;">Home</a>
		</li>
		<li class="nav">
			<a class="text-white mx-3 my-3 fs-5" href="ViewStudentInformation" style="text-decoration:none;">View Student</a>
		</li>
		<li class="nav">
			<a class="text-white mx-3 my-3 fs-5" href="adminAddedStudent.jsp" style="text-decoration:none;">Add Student</a>
		</li>
		<li class="nav">
			<a class="text-white mx-3 my-3 fs-5" href="#" style="text-decoration:none;">Admin Profile</a>
		</li>
		<li class="nav">
			<a class="text-white mx-3 my-3 fs-5" href="AdminLogOut" style="text-decoration:none;">LogOut</a>
		</li>
	</ul>
	<ul class="navbar justify-content-end container-fluid" style="background-color:LightGray; margin-top:0%;">
	  <li class="nav">
	    <button class="navbar-toggler btn mx-4 my-3" data-bs-toggle="collapse" aria-expanded="false" data-bs-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-label="Toggle navigation" style="box-shadow:none; outline:hidden; border:none;">
	    	<span class="navbar-toggler-icon"></span>
	    </button>
	  </li>
	</ul>
</body>
</html>