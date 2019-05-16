<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Book Tour</title>
<meta charset="UTF-8">
<!--===============================================================================================-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/fonts/themify/themify-icons.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/lightbox2/css/lightbox.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/util.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css">
</head>
<body class="animsition">

	<!-- Header -->
	<header>
		<jsp:include page="../menu.jsp"></jsp:include>
	</header>

	<!-- Title Page -->
	<section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15"
		style="background-image: url(${pageContext.request.contextPath}/images/hinh1.jpg);">
		<h2 class="tit6 t-center">Book Tour</h2>
	</section>


	<!-- Reservation -->
	<section class="section-reservation bg1-pattern p-t-100 p-b-113">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 p-b-30">
					<div class="t-center">
						<h3 class="tit3 t-center m-b-35 m-t-2">Book table</h3>
					</div>

					<form action="confirmBookTour" method="POST" class="wrap-form-reservation size22 m-l-r-auto">
						<div class="row">
							<div class="col-md-4">
								<!-- Date -->
								<span class="txt9"> Date Start</span>

								<div
									class="wrap-inputdate pos-relative txt10 size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<spring:bind path="time.timeStart">
										<input class="my-calendar bo-rad-10 sizefull txt10 p-l-20"
											type="text" name="${status.expression}"
											value="${status.value}">
										<i
											class="btn-calendar fa fa-calendar ab-r-m hov-pointer m-r-18"
											aria-hidden="true"></i>
									</spring:bind>
								</div>
							</div>

							<div class="col-md-4">
								<!-- Date -->
								<span class="txt9"> Date End</span>

								<div
									class="wrap-inputdate pos-relative txt10 size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<spring:bind path="time.timeEnd">
										<input class="my-calendar bo-rad-10 sizefull txt10 p-l-20"
											type="text" name="${status.expression}"
											value="${status.value}">
										<i
											class="btn-calendar fa fa-calendar ab-r-m hov-pointer m-r-18"
											aria-hidden="true"></i>
									</spring:bind>
								</div>
							</div>

							<div class="col-md-4">
								<!-- People -->
								<span class="txt9"> People </span>

								<div class="wrap-inputpeople size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<!-- Select2 -->
									<spring:bind path="bookTour.quantityPeople">
										<select class="selection-1" name="${status.expression}">
											<option value="1">1 person</option>
											<option value="2">2 people</option>
											<option value="3">3 people</option>
											<option value="4">4 people</option>
											<option value="5">5 people</option>
											<option value="6">6 people</option>
											<option value="7">7 people</option>
											<option value="8">8 people</option>
											<option value="9">9 people</option>
											<option value="10">10 people</option>
											<option value="11">11 people</option>
											<option value="12">12 people</option>
										</select>
									</spring:bind>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<!-- Name -->
								<span class="txt9"> Name </span>

								<div class="wrap-inputname size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<spring:bind path="user.firstName">
										<input class="bo-rad-10 sizefull txt10 p-l-20"
											type="text" name="${status.expression}"
											value="${status.value}">
									</spring:bind>
								</div>
							</div>

							<div class="col-md-4">
								<!-- Phone -->
								<span class="txt9"> Phone </span>

								<div class="wrap-inputphone size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<spring:bind path="user.phoneNumber">
										<input class="bo-rad-10 sizefull txt10 p-l-20"
											type="text" name="${status.expression}"
											value="${status.value}">
									</spring:bind>
								</div>
							</div>

							<div class="col-md-4">
								<!-- Email -->
								<span class="txt9"> Email </span>

								<div class="wrap-inputemail size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<spring:bind path="user.email">
										<input class="bo-rad-10 sizefull txt10 p-l-20"
											type="email" name="${status.expression}"
											value="${status.value}">
									</spring:bind>
								</div>
							</div>

						</div>
						<div class="row">
							<div class="col-md-4">
								<!-- Email -->
								<span class="txt9"> Payment method </span>

								<div class="wrap-inputemail size12 bo2 bo-rad-10 m-t-3 m-b-23">
									<spring:bind path="bookTour.paymentStatus">
										<select class="selection-1" name="${status.expression}">
											<option value="1">COD</option>
											<option value="2">Banking</option>
											<option value="3">VISA/ MASTER CARD</option>
										</select>
									</spring:bind>
								</div>
							</div>
						</div>
						<spring:bind path="bookTour.idTourist">
							<input type="hidden" name="${status.expression }" value="1">
						</spring:bind>
						<spring:bind path="bookTour.idTour">
							<input type="hidden" name="${status.expression }" value="1">
						</spring:bind>
						<div class="wrap-btn-booking flex-c-m m-t-6">
							<!-- Button3 -->
							<a href="#" rel="Cancel" class="btn btn-outline-danger"
								style="margin-right: 30px; width: 150px;">Cancel </a>
							<button type="submit"
								class="btn3 flex-c-m size13 txt11 trans-0-4">Book Table
							</button>
							<a href="#" rel="Chat with Tourist"
								style="margin-left: 30px; width: 150px;" class="btn btn-info">Chat
							</a>
						</div>
					</form>
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
	<div></div>

	<!-- Container Selection1 -->
	<div id="dropDownSelect1"></div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/vendor/daterangepicker/moment.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/vendor/slick/slick.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/vendor/parallax100/parallax100.js"></script>
	<script type="text/javascript">
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/vendor/lightbox2/js/lightbox.min.js"></script>
	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/js/main.js"></script>

</body>
</html>
