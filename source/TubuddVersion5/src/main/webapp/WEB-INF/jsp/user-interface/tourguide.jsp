<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib  uri="http://www.springframework.org/tags" prefix="spring" %>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html lang="en">
<head>
<title>Profile Tour Guide</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>	
<!--===============================================================================================-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">
<!--===============================================================================================-->
<link rel="icon" type="images/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />
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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animate/animate.css">
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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/lightbox2/css/lightbox.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/util.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
<!--===============================================================================================-->
</head>
<body class="animsition">

	<!-- Header -->
	<header>
		<jsp:include page="../menu.jsp"></jsp:include>
	</header>
	<h1>${sessionAccount}</h1>
	<h1>${currentAccount.username }</h1>
	<%
	%>
	<!-- Reservation -->
	<section class="section-reservation bg1-pattern p-t-100 p-b-113">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 p-b-30">
					<div class="t-center">
						<span class="tit2 t-center">  </span>

						<h3 class="tit3 t-center m-b-35 m-t-2">Profile Tour Guide</h3>
					</div>
					<!-- form tour guide -->
					<div id="formTourguide">
					<form action="saveTourGuide" class="wrap-form-reservation size22 m-l-r-auto" method="POST">
						<div class="row">
							<div class="col-md-6">
								<!-- Name -->
								<span class="txt9">First Name </span>

								<div class="wrap-inputname size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<spring:bind path="user.firstName">
									   <input type="text" name="${status.expression}" value="${status.value}" class="bo-rad-10 sizefull txt10 p-l-20"><br />
									</spring:bind>
								</div>
							</div>

							<div class="col-md-6">
								<!-- Phone -->
								<span class="txt9"> Last Name </span>

								<div class="wrap-inputphone size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<spring:bind path="user.lastName">
									   <input type="text" name="${status.expression}" value="${status.value}" class="bo-rad-10 sizefull txt10 p-l-20"><br />
									</spring:bind>
								</div>
							</div>

						</div>
						<div class="row">
							<div class="col-md-4">
								<!-- Email -->
								<span class="txt9"> Sex </span>

								<div class="wrap-inputemail size12 bo2 bo-rad-10 m-t-3 m-b-23">
								<spring:bind path="user.email">
									   <select name="${status.expression}" class="bo-rad-10 sizefull txt10 p-l-20">
									   		<option value="1">Male</option>
									   		<option value="0">Female</option>
									   </select>
								</spring:bind>
									
								</div>
							</div>
							<div class="col-md-4">
								<span class="txt9">Phone Nunber </span>

								<div class="wrap-inputemail size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<spring:bind path="user.phoneNumber">
									   <input type="text" name="${status.expression}" value="${status.value}" class="bo-rad-10 sizefull txt10 p-l-20"><br />
									</spring:bind>
								</div>
							</div>

							<div class="col-md-4">
								<!-- Name -->
								<span class="txt9">Email </span>

								<div class="wrap-inputemail size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<spring:bind path="user.email">
									   <input type="email" name="${status.expression}" value="${status.value}" class="bo-rad-10 sizefull txt10 p-l-20"><br />
									</spring:bind>
								</div>
							</div>
							
						</div>
						<div class="row">
							<div class="col-md-4">
								<!-- Name -->
								<span class="txt9">City </span>

								<div class="wrap-inputname size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<select id="city" class="bo-rad-10 sizefull txt10 p-l-20">
										<option>Choose city...</option>
										<option>Ho Chi Minh city </option>
										<option>Da Nang </option>
										<option>Ha Noi </option>
									</select>
								</div>
							</div>
							<div class="col-md-4">
								<!-- Name -->
								<span class="txt9">Town </span>

								<div class="wrap-inputname size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<spring:bind path="tourGuide.idTown">
									   <select name="${status.expression}" id="town" class="bo-rad-10 sizefull txt10 p-l-20">
									   	<option>Choose town...</option>
										<option value="4" >District 1 </option>
										<option value="5">District 2 </option>
										<option value="6">District 3</option>
									   </select>
								</spring:bind>
								</div>
							</div>

							<div class="col-md-4">
								<!-- Email -->
								<span class="txt9"> Address </span>

								<div class="wrap-inputemail size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<spring:bind path="tourGuide.address">
									   <input type="text" name="${status.expression}" value="${status.value}" class="bo-rad-10 sizefull txt10 p-l-20"><br />
									</spring:bind>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<!-- Name -->
								<span class="txt9">Promotion </span>

								<div class="wrap-inputname size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<spring:bind path="tourGuide.promotion">
									   <input type="text" name="${status.expression}" value="${status.value}" class="bo-rad-10 sizefull txt10 p-l-20"><br />
									</spring:bind>
								</div>
							</div>
							<div class="col-md-4">
								<!-- Phone -->
								<span class="txt9"> Birthday </span>

								<div class="wrap-inputphone size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<spring:bind path="tourGuide.dob">
									   <input type="date" name="${status.expression}" value="${status.value}" class="bo-rad-10 sizefull txt10 p-l-20"><br />
									</spring:bind>
								</div>
							</div>
							<div class="col-md-4">
								<!-- Email -->
								<span class="txt9"> Indentity Card </span>

								<div class="wrap-inputemail size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<spring:bind path="tourGuide.indentityCard">
									   <input type="text" name="${status.expression}" value="${status.value}" class="bo-rad-10 sizefull txt10 p-l-20"><br />
									</spring:bind>
								</div>
							</div>

						</div>
						<spring:bind path="user.idRole">
							<input type="hidden" name="${status.expression}" value="2" >
						</spring:bind>
						<spring:bind path="user.idAccount">
							<input type="hidden" name="${status.expression}" value="10" >
						</spring:bind>
						<spring:bind path="user.state">
							<input type="hidden" name="${status.expression}" value="0" >
						</spring:bind>
						<div class="wrap-btn-booking flex-c-m m-t-6">
							<button type="submit"
								class="btn btn-warning btn-lg active">Save
							</button>
						</div>
					</form>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<!-- Container Selection1 -->
	<div id="dropDownSelect1"></div>
	<!--===============================================================================================-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendor/daterangepicker/moment.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/slick/slick.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/parallax100/parallax100.js"></script>
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
