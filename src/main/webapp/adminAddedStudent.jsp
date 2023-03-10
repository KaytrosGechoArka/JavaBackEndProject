<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.getRequestDispatcher("allAdmin.jsp").include(request, response);%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Account</title>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="styleAccount.css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
</head>
<body>
	<main class=" main container-fluid shadow-lg p-5 w-75 justify-content-center m-5">
	<span class="text-primary fs-1" style="margin-left:35%;">Registration Form</span>
	<form action="AdminRegistrationHandler" method="post" class="container" id="form">
		<!-- Start Of Input Form for input student name email and password -->
		<div class="row p-4">
			<div class="col-6 my-container">
				<input class="form-control" type="text" name="fname" id="fname" placeholder="Enter First Name" style="height:60px;"/>
				
			</div>
			<div class="col-6 my-container">
				<input class="form-control" type="text" name="lname" id="lname" placeholder="Enter Last Name" style="height:60px;"/>
			</div>
		</div>
		<div class="row p-4">
			<div class="col-12 my-container">
				<input class="form-control" type="email" name="email" id="email" placeholder="Email Address" style="height:60px;"/>
			</div>
		</div>
		<div class="row p-4">
			<div class="col-6 my-container">
				<input class="form-control" type="password" name="password" id="password" placeholder="New Password" style="height:60px;"/>
			</div>
			<div class="col-6 my-container">
				<input class="form-control" type="password" name="confirm" id="confirm" placeholder="Confirm Password" style="height:60px;"/>
			</div>
		</div>
		<!-- End Of Input Form for input student name email and password -->
		<!-- Start Of Form for Sex and Nationality -->
		<div class="row">
			<!-- Start Of Form Check for sex -->
			<div class="col-6 d-flex p-4 pb-0 ms-3">
				<span class="fs-3 fw-lighter" style="top:-12px; position:relative;">Sex</span>
				<div class="form-check form-check-inline mx-3">
				  <input class="form-check-input" type="radio" name="sex" id="male" value="Male" checked="checked">
				  <label class="form-check-label" for="male">Male</label>
				</div>
				<div class="form-check form-check-inline mx-3">
				  <input class="form-check-input" type="radio" name="sex" id="female" value="Female">
				  <label class="form-check-label" for="female">Female</label>
				</div>
			</div>
			<!-- End Of Form Check for sex -->
			<!-- Start Form Select form for nationality -->
			<div class="col-6 d-flex" style="width:450px;">
				<span class="fs-3 fw-lighter">Nationality</span>
				<div class="col-auto ms-3 mt-2">
						<select class="form-select" aria-label="Default select example" name="nationality" style="width:190px;">
						<option selected value="Ethioia">Ethiopia</option>
						<option value="USA">USA</option>
						<option value="Germany">Germany</option>
						<option value="UK">UK</option>
					</select>
				</div>
			</div>
			<!-- End Form Select form for nationality -->
		</div>
		<!--End Of Form for Sex and Nationality -->
		<!-- Start Of Check Form -->
		<div class="container-fluid ms-4">
			<div class="form-check">
				<input class="form-check-input fs-4 border-secondary border-2 rounded-0 text-info" type="checkbox" value="" id="flexCheckChecked">
				<label class="form-check-label text-secondary mt-1 fs-5" for="flexCheckChecked">I agree to the website terms and conditions</label>
			</div>
		</div>
		<!-- End Of Check Form -->
		<!-- Start Of Button -->
		<div class="container-fluid d-inline w-100 mt-0 mb-5">
			<button type="submit" class="btn  bg-info text-white mt-0 fs-4 p-2 px-5 rounded-0 float-end"  name="register">Submit</button>
		</div>	
		<!-- End Of Button -->
	</form>
	</main>
	<script>
		const password=document.getElementById('password');
		const confirm=document.getElementById('confirm');
		const form=document.getElementById('form');
		form.addEventListener('submit',(e)=>{
			
		if(password.value!=confirm.value){
			
			confirm.innerHTML="Password Mis-Match";
			confirm.style.color='red';
			e.preventDefault();
			
			}
		})
		
	</script>
</body>
</html>