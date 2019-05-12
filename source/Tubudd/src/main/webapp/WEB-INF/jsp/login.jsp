<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Sufee Admin - HTML5 Admin Template</title>
<meta name="description" content="Sufee Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="apple-icon.png">
<link rel="shortcut icon" href="favicon.ico">


<link rel="stylesheet"
	href="../resources/vendors/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../resources/vendors/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="../resources/vendors/themify-icons/css/themify-icons.css">
<link rel="stylesheet"
	href="../resources/vendors/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet"
	href="../resources/vendors/selectFX/css/cs-skin-elastic.css">

<link rel="stylesheet" href="../resources/assets/css/style.css">

<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
	rel='stylesheet' type='text/css'>

<title>login</title>
</head>

<body class="bg-dark">
	<h1>${username}</h1>
	<h1>${password}</h1>

	<div class="sufee-login d-flex align-content-center flex-wrap">
		<div class="container">
			<div class="login-content">
				<div class="login-logo">
					<a href="index.html"> <img class="align-content"
						src="images/logo.png" alt="">
					</a>
				</div>
				<div class="login-form">
					<form action="" method="post">
						<div class="form-group">
							<label>Username</label> <input name="username" type="text"
								class="form-control" placeholder="Username">
						</div>
						<div class="form-group">
							<label>Password</label> <input name="password" type="password"
								class="form-control" placeholder="Password">
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"> Remember Me
							</label> <label class="pull-right"> <a href="#">Forgotten
									Password?</a>
							</label>

						</div>
						<div>
							<p style="color: red">${error}</p>
						</div>
						<button type="submit"
							class="btn btn-success btn-flat m-b-30 m-t-30">Sign in</button>
						<div class="social-login-content">
							<div class="social-button">
								<button type="button"
									class="btn social facebook btn-flat btn-addon mb-3">
									<i class="ti-facebook"></i>Sign in with facebook
								</button>
								<button type="button"
									class="btn social twitter btn-flat btn-addon mt-2">
									<i class="ti-twitter"></i>Sign in with twitter
								</button>
							</div>
						</div>
						<div class="register-link m-t-15 text-center">
							<p>
								Don't have account ? <a href="#"> Sign Up Here</a>
							</p>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<script src="vendors/jquery/dist/jquery.min.js"></script>
	<script src="vendors/popper.js/dist/umd/popper.min.js"></script>
	<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="assets/js/main.js"></script>



</body>
</html>