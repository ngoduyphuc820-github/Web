<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Confirm Book Tour</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/fonts/themify/themify-icons.css" />
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
	<c:if test="${booktourSSID == 0}">
		<%
			response.sendRedirect("book-tour");
		%>
	</c:if>

	<!-- Header -->
	<header>
		<jsp:include page="../menu.jsp"></jsp:include>
	</header>

	<!-- Title Page -->
	<section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15"
		style="background-image: url(images/bg-title-page-03.jpg);">
		<h2 class="tit6 t-center">Tour</h2>
	</section>


	<!-- Content page -->
	<section>
		<div class="bread-crumb bo5-b p-t-17 p-b-17">
			<div class="container">
				<a href="index.html" class="txt27"> Home </a> <span
					class="txt29 m-l-10 m-r-10">/</span> <a href="blog.html"
					class="txt27"> Blog </a> <span class="txt29 m-l-10 m-r-10">/</span>

				<span class="txt29"> Cooking recipe delicious </span>
			</div>
		</div>

		<div class="container">
			<form action="bookTour" method="POST">
				<div class="row ">
					<div class="col-md-8 col-lg-9">
						<div
							class="p-t-80 p-b-124 bo5-r p-r-50 h-full p-r-0-md bo-none-md">
							<!-- Block4 -->
							<div class="blo4 p-b-63">
								<!-- - -->
								<div class="pic-blo4 hov-img-zoom bo-rad-10 pos-relative">
									<video width="100%" height="auto"  controls>
										<source 
											src="${pageContext.request.contextPath}/resources/images/videos/video1.mp4"
											type="video/mp4">
									</video>
									<div class="date-blo4 flex-col-c-m">
										<span class="txt30 m-b-4"> 28 </span> <span class="txt31">
											Dec, 2018 </span>
									</div>
								</div>

								<!-- - -->
								<div class="text-blo4 p-t-33">
									<h4 class="p-b-16">
										<a href="#" class="tit9">${tour.nameTour} ABC</a>
									</h4>

									<div class="txt32 flex-w p-b-24">
										<span> Tour Guide : </span>

									</div>
									<h4>Describle</h4>
									<p>${tour.describle }mota</p>
								</div>
							</div>

							<!-- Leave a comment -->
							<h4 class="txt33 p-b-14">Information Tourist</h4>

							<span>Tourist : </span>
							<div class="size30 bo2 bo-rad-10 m-t-3 m-b-20">

								<input class="bo-rad-10 sizefull txt10 p-l-20" type="text"
									name="firstName" value="${user.firstName }">
							</div>
							<span>Phone number : </span>
							<div class="size30 bo2 bo-rad-10 m-t-3 m-b-20">
								<input class="bo-rad-10 sizefull txt10 p-l-20" type="text"
									name="phoneNumber" value="${user.phoneNumber }">
							</div>
							<span>Email : </span>
							<div class="size30 bo2 bo-rad-10 m-t-3 m-b-20">
								<input class="bo-rad-10 sizefull txt10 p-l-20" type="text"
									name="email" value="${user.email }">
							</div>
							<span>Date start : </span>
							<div class="size30 bo2 bo-rad-10 m-t-3 m-b-30">
								<input class="bo-rad-10 sizefull txt10 p-l-20" type="text"
									name="timeStart" value="${time.timeStart }">
							</div>
							<span>Date end: </span>
							<div class="size30 bo2 bo-rad-10 m-t-3 m-b-30">
								<input class="bo-rad-10 sizefull txt10 p-l-20" type="text"
									name="timeEnd" value="${time.timeEnd }">
							</div>
							<span>Quantity : </span>
							<div class="size30 bo2 bo-rad-10 m-t-3 m-b-30">
								<input class="bo-rad-10 sizefull txt10 p-l-20" type="text"
									name="quantityPeople" value="${bookTour.quantityPeople }">
							</div>
							<span>Price : </span>
							<div class="size30 bo2 bo-rad-10 m-t-3 m-b-30">
								<input class="bo-rad-10 sizefull txt10 p-l-20" type="text"
									name="cost" value="${bookTour.cost }">
							</div>
							<spring:bind path="user.codeUser">
								<input type="hidden" name="${status.expression }" value="${user.codeUser}" >
							</spring:bind>
							<spring:bind path="user.idAccount">
								<input type="hidden" name="${status.expression }" value="${user.idAccount}" >
							</spring:bind>
							<spring:bind path="user.idRole">
								<input type="hidden" name="${status.expression }" value="${user.idRole}" >
							</spring:bind>
							<spring:bind path="bookTour.idTour">
								<input type="hidden" name="${status.expression }" value="${bookTour.idTour}" >
							</spring:bind>
							<spring:bind path="bookTour.idTourist">
								<input type="hidden" name="${status.expression }" value="${bookTour.idTourist}" >
							</spring:bind>
							<!-- Button3 -->
							<button type="submit"
								class="btn3 flex-c-m size31 txt11 trans-0-4">Book Tour</button>
						</div>
					</div>

					<div class="col-md-4 col-lg-3">
						<div class="sidebar2 p-t-80 p-b-80 p-l-20 p-l-0-md p-t-0-md">
							<!-- Search -->
							<div class="search-sidebar2 size12 bo2 pos-relative">
								<input class="input-search-sidebar2 txt10 p-l-20 p-r-55"
									type="text" name="search" placeholder="Search">
								<button class="btn-search-sidebar2 flex-c-m ti-search trans-0-4"></button>
							</div>

							<!-- Categories -->
							<div class="categories">
								<h4 class="txt33 bo5-b p-b-35 p-t-58">Categories</h4>

								<ul>
									<li class="bo5-b p-t-8 p-b-8"><a href="#" class="txt27">
											Cooking recipe </a></li>

									<li class="bo5-b p-t-8 p-b-8"><a href="#" class="txt27">
											Delicious foods </a></li>

									<li class="bo5-b p-t-8 p-b-8"><a href="#" class="txt27">
											Events Design </a></li>

									<li class="bo5-b p-t-8 p-b-8"><a href="#" class="txt27">
											Restaurant Place </a></li>

									<li class="bo5-b p-t-8 p-b-8"><a href="#" class="txt27">
											WordPress </a></li>
								</ul>
							</div>

							<!-- Most Popular -->
							<div class="popular">
								<h4 class="txt33 p-b-35 p-t-58">Most popular</h4>

								<ul>
									<li class="flex-w m-b-25">
										<div class="size16 bo-rad-10 wrap-pic-w of-hidden m-r-18">
											<a href="#"> <img src="images/blog-11.jpg" alt="IMG-BLOG">
											</a>
										</div>

										<div class="size28">
											<a href="#" class="dis-block txt28 m-b-8"> Best Places
												for Wine </a> <span class="txt14"> 3 days ago </span>
										</div>
									</li>

									<li class="flex-w m-b-25">
										<div class="size16 bo-rad-10 wrap-pic-w of-hidden m-r-18">
											<a href="#"> <img src="images/blog-12.jpg" alt="IMG-BLOG">
											</a>
										</div>

										<div class="size28">
											<a href="#" class="dis-block txt28 m-b-8"> Eggs and
												Cheese </a> <span class="txt14"> July 2, 2017 </span>
										</div>
									</li>

									<li class="flex-w m-b-25">
										<div class="size16 bo-rad-10 wrap-pic-w of-hidden m-r-18">
											<a href="#"> <img src="images/blog-13.jpg" alt="IMG-BLOG">
											</a>
										</div>

										<div class="size28">
											<a href="#" class="dis-block txt28 m-b-8"> Style the
												Wedding Party </a> <span class="txt14"> May 28, 2017 </span>
										</div>
									</li>

									<li class="flex-w m-b-25">
										<div class="size16 bo-rad-10 wrap-pic-w of-hidden m-r-18">
											<a href="#"> <img src="images/blog-14.jpg" alt="IMG-BLOG">
											</a>
										</div>

										<div class="size28">
											<a href="#" class="dis-block txt28 m-b-8"> Cooking recipe
												Delicious </a> <span class="txt14"> May 25, 2017 </span>
										</div>
									</li>

									<li class="flex-w m-b-25">
										<div class="size16 bo-rad-10 wrap-pic-w of-hidden m-r-18">
											<a href="#"> <img src="images/blog-15.jpg" alt="IMG-BLOG">
											</a>
										</div>

										<div class="size28">
											<a href="#" class="dis-block txt28 m-b-8"> Pizza is
												prepared fresh </a> <span class="txt14"> May 2, 2017 </span>
										</div>
									</li>
								</ul>
							</div>


							<!-- Archive -->
							<div class="archive">
								<h4 class="txt33 p-b-20 p-t-43">Archive</h4>

								<ul>
									<li class="flex-sb-m p-t-8 p-b-8"><a href="#"
										class="txt27"> uly 2018 </a> <span class="txt29"> (9) </span></li>

									<li class="flex-sb-m p-t-8 p-b-8"><a href="#"
										class="txt27"> June 2018 </a> <span class="txt29"> (39)
									</span></li>

									<li class="flex-sb-m p-t-8 p-b-8"><a href="#"
										class="txt27"> May 2018 </a> <span class="txt29"> (29)
									</span></li>

									<li class="flex-sb-m p-t-8 p-b-8"><a href="#"
										class="txt27"> April 2018 </a> <span class="txt29">
											(35) </span></li>

									<li class="flex-sb-m p-t-8 p-b-8"><a href="#"
										class="txt27"> March 2018 </a> <span class="txt29">
											(22) </span></li>

									<li class="flex-sb-m p-t-8 p-b-8"><a href="#"
										class="txt27"> February 2018 </a> <span class="txt29">
											(32) </span></li>

									<li class="flex-sb-m p-t-8 p-b-8"><a href="#"
										class="txt27"> January 2018 </a> <span class="txt29">
											(21) </span></li>

									<li class="flex-sb-m p-t-8 p-b-8"><a href="#"
										class="txt27"> December 2017 </a> <span class="txt29">
											(26) </span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>


	<!-- Footer -->
	<footer class="bg1">
		<div class="container p-t-40 p-b-70">
			<div class="row">
				<div class="col-sm-6 col-md-4 p-t-50">
					<!-- - -->
					<h4 class="txt13 m-b-33">Contact Us</h4>

					<ul class="m-b-70">
						<li class="txt14 m-b-14"><i
							class="fa fa-map-marker fs-16 dis-inline-block size19"
							aria-hidden="true"></i> 8th floor, 379 Hudson St, New York, NY
							10018</li>

						<li class="txt14 m-b-14"><i
							class="fa fa-phone fs-16 dis-inline-block size19"
							aria-hidden="true"></i> (+1) 96 716 6879</li>

						<li class="txt14 m-b-14"><i
							class="fa fa-envelope fs-13 dis-inline-block size19"
							aria-hidden="true"></i> contact@site.com</li>
					</ul>

					<!-- - -->
					<h4 class="txt13 m-b-32">Opening Times</h4>

					<ul>
						<li class="txt14">09:30 AM â 11:00 PM</li>

						<li class="txt14">Every Day</li>
					</ul>
				</div>

				<div class="col-sm-6 col-md-4 p-t-50">
					<!-- - -->
					<h4 class="txt13 m-b-33">Latest twitter</h4>

					<div class="m-b-25">
						<span class="fs-13 color2 m-r-5"> <i class="fa fa-twitter"
							aria-hidden="true"></i>
						</span> <a href="#" class="txt15"> @colorlib </a>

						<p class="txt14 m-b-18">
							Activello is a good option. It has a slider built into that
							displays the featured image in the slider. <a href="#"
								class="txt15"> https://buff.ly/2zaSfAQ </a>
						</p>

						<span class="txt16"> 21 Dec 2017 </span>
					</div>

					<div>
						<span class="fs-13 color2 m-r-5"> <i class="fa fa-twitter"
							aria-hidden="true"></i>
						</span> <a href="#" class="txt15"> @colorlib </a>

						<p class="txt14 m-b-18">
							Activello is a good option. It has a slider built into that
							displays <a href="#" class="txt15"> https://buff.ly/2zaSfAQ </a>
						</p>

						<span class="txt16"> 21 Dec 2017 </span>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 p-t-50">
					<!-- - -->
					<h4 class="txt13 m-b-38">Gallery</h4>

					<!-- Gallery footer -->
					<div class="wrap-gallery-footer flex-w">
						<a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-01.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-01.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-02.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-02.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-03.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-03.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-04.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-04.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-05.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-05.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-06.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-06.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-07.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-07.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-08.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-08.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-09.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-09.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-10.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-10.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-11.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-11.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/photo-gallery-12.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-12.jpg" alt="GALLERY">
						</a>
					</div>

				</div>
			</div>
		</div>

		<div class="end-footer bg2">
			<div class="container">
				<div class="flex-sb-m flex-w p-t-22 p-b-22">
					<div class="p-t-5 p-b-5">
						<a href="#" class="fs-15 c-white"><i class="fa fa-tripadvisor"
							aria-hidden="true"></i></a> <a href="#" class="fs-15 c-white"><i
							class="fa fa-facebook m-l-18" aria-hidden="true"></i></a> <a href="#"
							class="fs-15 c-white"><i class="fa fa-twitter m-l-18"
							aria-hidden="true"></i></a>
					</div>

					<div class="txt17 p-r-20 p-t-5 p-b-5">
						Copyright &copy; 2018 All rights reserved | This template is made
						with <i class="fa fa-heart"></i> by <a href="https://colorlib.com"
							target="_blank">Colorlib</a>
					</div>
				</div>
			</div>

		</div>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>


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
