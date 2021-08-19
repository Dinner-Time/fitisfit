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
</style>
</head>

<body id="body">
	<jsp:include page="/WEB-INF/views/home/header.jsp" />

	<!--Start Contact Us
	=========================================== -->
	<section class="about" id="about">
		<div class="container">
			<div class="row">
				<!-- section title -->
				<div class="col-12">
					<div class="title text-center">
						<h2>업체 등록</h2>
						<div class="border"></div>
					</div>
				</div>
				<!-- /section title -->

				<!-- Contact Details -->
				<div class="contact-details col-md-6 ">

					<div class="card">
						<br> <img class="card-img-top" src="images/about-us.jpg"
							alt="Card image" style="width: 100%">
						<div class="card-body">
							<br> <input type="file" id="insPhoto" name="insPhoto">
							<br>
						</div>
					</div>
				</div>
				<!-- / End Contact Details -->

				<!-- Contact Form -->
				<div class="contact-form col-md-6 ">
					<form id="parInsert" name="parInsert" method="post"
						action="parInsert.do">

						<div class="form-group">
							<input type="email" placeholder="Your Email" class="form-control"
								name="parEmail" id="parEmail">
						</div>

						<div class="form-group">
							<input type="password" placeholder="Your Password"
								class="form-control" name="parPassword" id="parPassword">
						</div>

						<div class="form-group">
							<input type="text" placeholder="Your Name" class="form-control"
								name="parName" id="parName">
						</div>

						<div class="form-group">
							<select id="parRegId" name="parRegId" class="form-control">
								<option selected>Your Region</option>
								<option value="1">서울</option>
								<option value="2">인천</option>
								<option value="3">대전</option>
								<option value="4">대구</option>
								<option value="5">울산</option>
								<option value="6">부산</option>
								<option value="7">광주</option>
								<option value="8">경기</option>
								<option value="9">강원</option>
								<option value="10">충청</option>
								<option value="11">경상</option>
								<option value="12">전라</option>
								<option value="13">제주</option>
							</select>
						</div>

						<div class="form-group">
							<input type="text" placeholder="Your Address"
								class="form-control" name="parAddress" id="parAddress">
						</div>

						<div class="form-group">
							<input type="text" placeholder="Your Phone" class="form-control"
								name="parPhone" id="parPhone">
						</div>

						<div class="form-group">
							<textarea rows="6" placeholder="Your Introduce"
								class="form-control" name="parIntro" id="parIntro"></textarea>
						</div>

						<div id="success" class="success">Thank you for join us :)</div>

						<div id="error" class="error">Sorry, don't know what
							happened. Try later :(</div>
						<div id="cf-submit">
							<input type="submit" id="contact-submit"
								class="btn btn-transparent" value="Submit">
						</div>

					</form>
				</div>
				<!-- ./End Contact Form -->

			</div>
			<!-- end row -->
		</div>
	</section>
	<!-- end container -->
	<!-- end section -->
	<jsp:include page="/WEB-INF/views/home/footer.jsp" />
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