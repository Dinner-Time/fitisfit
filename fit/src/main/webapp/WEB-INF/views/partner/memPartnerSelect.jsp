<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Bingo One page parallax responsive HTML Template ">

<meta name="author" content="Themefisher.com">

<title>센터 소개 | Fit is Fit</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
<link rel="stylesheet" href="plugins/animate/animate.css">
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="css/style.css">

<style type="text/css">
.custom-border {
	height: 1px;
	margin: 20px auto 20px;
	position: relative;
	width: 100%;
	background: gray;
}

.custom-btn {
	background: none;
	border: none;
    outline: none;
	color: gray-dark;
	letter-spacing: 1px;
}
.custom-btn:focus {
	border: none;
    outline: none;
}
</style>
</head>

<body id="body">
	<jsp:include page="/WEB-INF/views/home/header.jsp" />
	<section class="single-page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>${partner.parName }</h2>
					<ol class="breadcrumb header-bradcrumb">
						<li><a href=""></a></li>
						<li class="active"></li>
					</ol>
				</div>
			</div>
		</div>
	</section>
	<section class="about-2 section" id="about">
		<div class="container">
			<div class="row">
				<div class="col-md-6" style="height: 300px;" align="center">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<img class="card-img-top img-thumbnail"
								src="images/partner/${partner.parPhoto }" alt="partner image"
								style="width: 100%;">
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<br>
					<div class="custom-border"></div>
					<br>
					<ul class="checklist">
						<li>${partner.parAddress }</li>
						<li>${partner.parEmail }</li>
						<li>${partner.parIntro }</li>
					</ul>
					<a href="#" class="btn btn-main mt-20">${partner.parPhone }</a> <br>
					<br>
					<div class="custom-border"></div>
				</div>
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
		<br>
	</section>
	<!-- End section -->
	<!-- Start Pricing section
		=========================================== -->
	<section class="pricing-table " id="pricing">
		<div class="container">
			<div class="row">
				<!-- section title -->
				<div class="col-12">
					<div class="title title-white text-center ">
						<h2>프로그램 소개</h2>
						<div class="border"></div>
					</div>
				</div>
				<!-- /section title -->

				<!-- single blog post -->
				<c:forEach var="pro" items="${proList }">
					<article class="col-md-3 col-sm-6 col-xs-12">
						<div class="post-item">
							<div class="media-wrapper">
								<img src="images/program/${pro.proPhoto }" alt="Program Photo"
									class="img-fluid">
							</div>

							<div class="content">
								<form id="proSelct" name="proSelect"
									action="programDetailUser.do" method="POST">
									<input type="hidden" id="proId" name="proId"
										value="${pro.proId }">
									<h3>
										<a href="#">${pro.proName }</a>
									</h3>
									<p>${pro.proDesc }</p>
									<p>${pro.proSince }</p>
									<button class="custom-btn" type="submit">${pro.proPrice}₩</button>
								</form>
							</div>
						</div>
					</article>
				</c:forEach>
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</section>
	<!-- End section -->
	<!-- Start Our Team
		=========================================== -->
	<section class="team" id="team">
		<div class="container">
			<div class="row">

				<!-- section title -->
				<div class="col-12">
					<div class="title text-center ">
						<h2>강사 소개</h2>
						<div class="border" style="background: #4343FE"></div>
					</div>
				</div>
				<!-- /section title -->
				<c:forEach var="ins" items="${insList }">
					<!-- team member -->
					<div class="col-md-3 col-sm-6 ">
						<div class="team-member text-center">
							<div class="member-photo">
								<!-- member photo -->
								<img class="img-fluid" src="images/instructor/${ins.insPhoto }"
									alt="Meghna">
								<!-- /member photo -->

								<!-- member social profile -->
								<div class="mask">
									<ul class="clearfix">
										<li><a href="#"><i class="tf-ion-social-facebook"></i></a></li>
										<li><a href="#"><i class="tf-ion-social-twitter"></i></a></li>
										<li><a href="#"><i
												class="tf-ion-social-google-outline"></i></a></li>
										<li><a href="#"><i class="tf-ion-social-dribbble"></i></a></li>
									</ul>
								</div>
								<!-- /member social profile -->
							</div>

							<!-- member name & designation -->
							<form id="insSelct" name="insSelect" action="insSelect.do"
								method="POST">
								<input type="hidden" id="insId" name="insId"
									value="${ins.insId }">
								<div class="member-content">
									<button class="custom-btn" type="submit">
										<h3>${ins.insName }</h3>
									</button>
								</div>
							</form>
							<!-- /member name & designation -->

						</div>
					</div>
					<!-- end team member -->
				</c:forEach>
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</section>
	<!-- End section -->
	<form action="" method="POST">
		<input type="hidden" name="" value="">
	</form>
	<!--
    Essential Scripts
    =====================================-->
	<!-- Main jQuery -->
	<script src="plugins/jquery/jquery.min.js"></script>
	<!-- Google Map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ"></script>
	<script src="plugins/google-map/gmap.js"></script>

	<!-- Form Validation -->
	<script src="plugins/form-validation/jquery.form.js"></script>
	<script src="plugins/form-validation/jquery.validate.min.js"></script>

	<!-- Bootstrap4 -->
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- Parallax -->
	<script src="plugins/parallax/jquery.parallax-1.1.3.js"></script>
	<!-- lightbox -->
	<script src="plugins/lightbox2/dist/js/lightbox.min.js"></script>
	<!-- Owl Carousel -->
	<script src="plugins/slick/slick.min.js"></script>
	<!-- filter -->
	<script src="plugins/filterizr/jquery.filterizr.min.js"></script>
	<!-- Smooth Scroll js -->
	<script src="plugins/smooth-scroll/smooth-scroll.min.js"></script>

	<!-- Custom js -->
	<script src="js/script.js"></script>

</body>
</html>