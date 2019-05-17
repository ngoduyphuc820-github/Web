<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Post tour</title>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">
<!--===============================================================================================-->
<link rel="icon" type="images/png"
	href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/fonts/themify/themify-icons.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/lightbox2/css/lightbox.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/util.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<!--===============================================================================================-->
</head>
<body class="animsition">

	<!-- Header -->
	<header>
		<!-- Header desktop -->
		<jsp:include page="../menu.jsp"></jsp:include>
	</header>

	<!-- Sidebar -->
	<aside class="sidebar trans-0-4"></aside>

	<section class="section-reservation bg1-pattern p-t-100 p-b-113">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 p-b-30">
					<div class="t-center">
						<span class="tit2 t-center">  </span>

						<h3 class="tit3 t-center m-b-35 m-t-2">Post tour</h3>
					</div>
					
					
					<!-- form tourist -->
					<form action="postTour" method="POST" enctype="multipart/form-data" class="wrap-form-reservation size22 m-l-r-auto">
						
						<div class="row">
							<div class="col-md-12">
								<!-- Name -->
								<span class="txt9">Title </span>

								<div class="wrap-inputname size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<spring:bind path="tour.nameTour">
									   <input type="text" name="${status.expression}" value="${status.value}" class="bo-rad-10 sizefull txt10 p-l-20"><br />
									</spring:bind>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<!-- Name -->
								<span class="txt9">City </span>

								<div class="wrap-inputname size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<spring:bind path="tour.idCity">
									   <select name="${status.expression}" class="bo-rad-10 sizefull txt10 p-l-20">
									   		<option value="2">Ho Chi Minh city</option>
									   		<option value="1">Ha Noi Capital</option>
									   		<option value="3">Da Nang city</option>
									   </select>
								</spring:bind>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<!-- Phone -->
								<span class="txt9"> Video </span>

								<div style="margin-top:15px; margin-bottom:15px;">
									<spring:bind path="tour.video">
									   <input type="file" name="${status.expression}" value="${status.value}" class="bo-rad-10 sizefull txt10 p-l-20"><br />
									</spring:bind>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<!-- Name -->
								<span class="txt9">Decrible: </span>

								<div style="height: 100px;margin-bottom:15px">
									<spring:bind path="tour.describle">
									<textarea name="${status.expression}" class="bo-rad-10 sizefull txt10 p-l-20"></textarea>
									</spring:bind>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<!-- Phone -->
								<span class="txt9"> Price </span>

								<div class="wrap-inputphone size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<spring:bind path="tour.price">
									   <input type="text" name="${status.expression}" value="${status.value}" class="bo-rad-10 sizefull txt10 p-l-20"><br />
									</spring:bind>
								</div>
							</div>
						</div>
						<spring:bind path="tour.idTourGuide">
							<input type="hidden" name="${status.expression }" value="4" >
						</spring:bind>
						<div class="wrap-btn-booking flex-c-m m-t-6">
							<button type="submit"
								class="btn btn-warning btn-lg active">Post
							</button>
						</div>
					</form>
					</div>
				</div>
			</div>
	</section>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendor/daterangepicker/moment.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendor/slick/slick.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendor/parallax100/parallax100.js"></script>
	<script type="text/javascript">
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendor/lightbox2/js/lightbox.min.js"></script>
	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>
