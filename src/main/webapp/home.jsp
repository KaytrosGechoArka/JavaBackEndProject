<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="style.css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<script src="https://kit.fontawesome.com/981f9b3d7a.js"></script>
</head>
	<body>
		<!-- Header-->	
		<header class="container-fluid row m-0 shadow-lg">
			<div class="col-3 justify-content-center mt-3 fs-1 text-white"><i class="bi bi-fire">Fire</i></div>
			<div class="col-9 justify-content-end">
				<nav class="navbar navbar-expand-lg justify-content-center">
				    <ul class="navbar-nav gap-5 p-3">
				       <li class="nav-item">
				          <a class="nav-link active text-white fs-4" aria-current="page" href="home.jsp"><i class="bi bi-house p-2"></i>Home</a>
				       </li>
				       <li class="nav-item">
				          <a class="nav-link text-white fs-4" href="homeOfstudent.jsp"><i class="bi bi-person p-2"></i>Student</a>
				       </li>
				       <li class="nav-item">
				          <a class="nav-link text-white fs-4" href="homeOfadmin.jsp"><i class="bi bi-person-badge p-2"></i>Admin</a>
				       </li>
				       <li class="nav-item">
				          <a class="nav-link text-white fs-4" href="#"><i class="bi bi-file-earmark-person-fill p-2"></i>About Us</a>
				       </li>
				    </ul>
				</nav>
			</div>
		</header>
		<!-- End Of Header -->
		<!-- Start Of Main -->
		<main class="container-fluid">
			<div class="main" style="height:100vh;width:100%; 
			background-image:url('images/Ethiopia.jpg');background-repeat:no-repeat; 
			background-size:cover; background-position:center;">
			</div>
		</main>
		<!-- End Of Header -->
		<!-- Start Of Footer-->
		<footer class="container-fluid shadow-lg bg-body-tertiary justify-content-center p-5">
			<div class="row ms-5">
				<section class="col-2 d-block justify-content-center">
					<h5 class="mb-4">Links</h5>
					<div class="mb-2"><a class="text-decoration-none fs-5  text-secondary" href="#">Home</a></div>
					<div class="mb-2"><a class="text-decoration-none fs-5  text-secondary" href="#">Admin</a></div>
					<div class="mb-2"><a class="text-decoration-none fs-5  text-secondary" href="#">Student</a></div>
					<div class="mb-2"><a class="text-decoration-none fs-5   text-secondary" href="#">About Us</a></div>
				</section>
				<section class="col-2 d-block justify-content-center">
					<h5 class="mb-4">Projects</h5>
					<div class="mb-2"><a class="text-decoration-none fs-5  text-secondary" href="#">Bootstrap-5</a></div>
					<div class="mb-2"><a class="text-decoration-none fs-5  text-secondary" href="#">Java Servlet</a></div>
					<div class="mb-2"><a class="text-decoration-none fs-5  text-secondary" href="#">Java JSP</a></div>
					<div class="mb-2"><a class="text-decoration-none fs-5  text-secondary" href="#">Angular</a></div>
				</section>
				<section class="col-2 d-block justify-content-center">
					<h5 class="mb-4">Community</h5>
					<div class="mb-2"><a class="text-decoration-none fs-5  text-secondary" href="#">Issues</a></div>
					<div class="mb-2"><a class="text-decoration-none fs-5  text-secondary" href="#">Discussions</a></div>
					<div class="mb-2"><a class="text-decoration-none fs-5  text-secondary" href="#">Corporate sponsors</a></div>
					<div class="mb-2"><a class="text-decoration-none fs-5  text-secondary" href="#">Open Collective</a></div>
				</section>
				<section class="col-6 d-block justify-content-center" style="position:relative;">
					<h5>Subscribe to Our Newsletter</h5>
					<p>Monthly digest of what is new and exciting from us.</p>
					<form class="row g-3">
					  <div class="col-5 px-0 myinput">
					    <input type="email" id="email" class="form-control rounded-0" placeholder="Email" style="height:45px;">
					  </div>
					  <div class="col-4 px-0">
					    <button type="submit" class="btn btn-primary mb-3 rounded-0" style="height:45px;">Subscribe</button>
					  </div>
					</form>
					<div class="text-danger fs-1" style="left:80%; position:absolute; top:0%"><i class="bi bi-fire">Fire</i></div>
				</section>
				<hr class="text-secondary mt-5">
			</div>
			<div class=" container-fluid row justify-content-space" style="position:relative;">
				<div class="col-auto justify-content-start float-start ms-5 pt-4">&copy 2022 Company, Inc. All rights reserved.</div>
				<div class="col-auto d-flex gap-4 justify-content-end float-end  ms-5 pt-2 me-0" style="left:80%; position:absolute;">
					<i class="bi bi-twitter text-primary fs-2"></i>
					<i class="bi bi-instagram text-danger fs-2"></i>
					<i class="bi bi-facebook text-primary fs-2"></i>
				</div>
			</div>
		</footer>
		<!-- End Of Footer-->
	</body>
</html>
