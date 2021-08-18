<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Bingo One page parallax responsive HTML Template ">

<meta name="author" content="Themefisher.com">

<title>Bingo | Responsive Multipurpose Parallax HTML5 Template</title>

<!-- Mobile Specific Meta
  ================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />

<!-- CSS
  ================================================== -->
<!-- Themefisher Icon font -->
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<!-- bootstrap.min css -->
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<!-- Lightbox.min css -->
<link rel="stylesheet"
	href="plugins/lightbox2/dist/css/lightbox.min.css">
<!-- animation css -->
<link rel="stylesheet" href="plugins/animate/animate.css">
<!-- Slick Carousel -->
<link rel="stylesheet" href="plugins/slick/slick.css">
<!-- Main Stylesheet -->
<link rel="stylesheet" href="css/style.css">
<style type="text/css">
.custom-border {
	height: 2px;
	margin: 20px auto 20px;
	position: relative;
	width: 100%;
	background: gray;
}
.custom-btn {
	background: #4343FE;
	border: 1px solid #4343FE;
	color: #fff;
	display: inline-block;
	font-size: 14px;
	letter-spacing: 1px;
	padding: 12px 40px;
	text-transform: uppercase;
	border-radius: 40px;
}
.custom-group {
	padding: 10px;
}
</style>
</head>

<body id="body">
	<jsp:include page="/WEB-INF/views/home/header.jsp" />

	<!--Start Contact Us
	=========================================== -->
	<div class="container">
		<div class="row">
			<!-- section title -->
			<div class="col-12">
				<div class="title text-center">
					<h2>업체명</h2>
					<div class="custom-border"></div>
				</div>
			</div>
			<!-- /section title -->

			<!-- Contact Details -->
			<div class="contact-details col-md-6 ">

				<div class="card">
					<br>
					<img class="card-img-top" src="images/about-us.jpg"
						alt="Card image" style="width: 100%">
					<div class="card-body">
					<br>
					<br>
					</div>
				</div>
			</div>
			<!-- / End Contact Details -->

			<!-- Contact Form -->
			<div class="contact-form col-md-6 ">
				<form id="contact-form" method="post" role="form">

					<div class="form-group custom-group">
						파트너 이메일
					</div>

					<div class="form-group custom-group">
						파트너 비밀번호
					</div>

					<div class="form-group custom-group">
						파트너 이름
					</div>

					<div class="form-group custom-group">
						파트너 지역
					</div>

					<div class="form-group custom-group">
						파트너 주소
					</div>

					<div class="form-group custom-group">
						파트너 전화번호
					</div>

					<div class="form-group custom-group">
						파트너 소개
					</div>

					<div id="cf-submit" align="right">
						<input type="button" class="custom-btn" value="수정">
					</div>

				</form>
			</div>
			<!-- ./End Contact Form -->

		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
	<!-- end section -->

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