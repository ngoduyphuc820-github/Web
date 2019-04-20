<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Register</title>
<meta name="description" content="Sufee Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendors/bootstrap/dist/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendors/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendors/themify-icons/css/themify-icons.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendors/flag-icon-css/css/flag-icon.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendors/selectFX/css/cs-skin-elastic.css" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css" />


</head>

<body class="bg-dark">


	<div class="sufee-login d-flex align-content-center flex-wrap">
		<div class="container">
			<div class="login-content">
				
				<div class="login-form">
				
				<div class="login-logo">
					<a href="index.html">
						<h1 style="color:black">Register</h1>
					</a>
				</div>
					<div class="card">
						<div class="card-body card-block">
							<form:form action="submitRegister" method="post" modelAttribute="account">
								<div class="form-group">
									<div class="input-group">
										<div class="input-group-addon">
											<i class="fa fa-user"></i>
										</div>
										<form:input type="text" id="username" path="username"
											placeholder="Username" class="form-control" />
									</div>
								</div>
								<div class="form-group">
									<div class="input-group">
										<div class="input-group-addon">
											<i class="fa fa-asterisk"></i>
										</div>
										<form:input type="password" id="password" path="password"
											placeholder="Password" class="form-control" />
									</div>
								</div>
								<div class="form-group">
									<div class="input-group">
										<div class="input-group-addon">
											<i class="fa fa-undo"></i>
										</div>
										<input type="password" id="rePassword" name="rePassword"
											placeholder="re-Password" class="form-control" />
									</div>
								</div>
								<div class="form-actions form-group">
									<button type="submit" class="btn btn-success btn-sm">Register</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script src="../admin/vendors/jquery/dist/jquery.min.js">
		<script src="../admin/vendors/popper.js/dist/umd/popper.min.js" >
		<script src="../admin/vendors/bootstrap/dist/js/bootstrap.min.js" >
		<script src="../admin/assets/js/main.js">
	</script>


</body>

</html>
