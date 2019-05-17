<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<title>Register</title>
<meta name="description" content="Sufee Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/bootstrap/dist/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/themify-icons/css/themify-icons.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/selectFX/css/cs-skin-elastic.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/style.css" />

<script type="text/javascript">
	$(function(){
		$("#confirm-password").keyup(function(e){
			var pass = $("#password").val();
			var confirmP = $(this).val();
			if(pass !== confirmP){
				$("#error").text("Password not correct. Enter again ! Please !")
			}else{
				$("#error").text("") 
			}
		})
	})
</script>
</head>

<body class="bg-dark">


	<div class="sufee-login d-flex align-content-center flex-wrap">
		<div class="container">
			<div class="login-content">

				<div class="login-form">

					<div class="login-logo">
						<a href="index">
							<h1 style="color: black">Register</h1>
						</a>
					</div>
					<div class="login-form">
						<form:form action="submitRegister" modelAttribute="account" >
							<div class="form-group">
								<label>User Name</label> 
								<form:input path="username" 
									class="form-control" placeholder="UserName" />
								<form:errors path="username" cssClass="error"></form:errors>
							</div>
							<div class="form-group">
								<label>Password</label> 
								<form:password path="password" 
									class="form-control" placeholder="Password" />
								<form:errors path="password" cssClass="error"></form:errors>
							</div>
							<div class="form-group">
								<label>Confirm Password</label> 
								<input id="confirm-password" type="password" class="form-control" placeholder="ConfirmPassword" />
								<span id="error" class="error"></span>
							</div>
							<div class="form-group">
								<span id="error" class="error">${available}</span>
							</div>
							<form:hidden path="id"/>
							<form:hidden path="state"/>
							<button type="submit"
								class="btn btn-primary btn-flat m-b-30 m-t-30">Register</button>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
<style>
	label{
		font-weight: bold;
		color: black;
	}
	.error{
		color :red;
	}
</style>
	<script src="${pageContext.request.contextPath}/resources/vendors/jquery/dist/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendors/popper.js/dist/umd/popper.min.js" ></script>
	<script src="${pageContext.request.contextPath}/resources/vendors/bootstrap/dist/js/bootstrap.min.js" ></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
	


</body>

</html>
