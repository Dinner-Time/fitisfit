
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Bingo One page parallax responsive HTML Template ">

<meta name="author" content="Themefisher.com">

<title>FitIsFit REGION</title>

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
<link rel="stylesheet" href="css/style.css?after">

<!-- 폰트 시작 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<!-- 폰트 끝 -->


<style type="text/css">

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
.custom-border {
	height: 2px;
	margin: 20px auto 20px;
	position: relative;
	width: 200px;
	background: #4343FE;
}
h1 {
	font-family: 'Gowun Dodum', sans-serif;
	color:white;
	text-shadow:5px 5px 5px black;
	
}
.region{
	margin:auto;
	border: 1px solid #191970;
	border-right:none;
	border-left:none;
	text-align:center;
	background-image:url('images/region/Seoul.jpg');
	background-size:1250px;
}
td{
  width:1250px;
  height:300px;
}
</style>

</head>

<body id="body">
<jsp:include page="../home/header.jsp" />

	<!-- Start Portfolio Section
		=========================================== -->
	<section class="portfolio section-sm" id="portfolio">
		<div class="container-fluid">
			<div class="row ">
				<div class="col-lg-12">
					<!-- section title -->
					<table class="region">
					<tr><td><h1>Seoul</h1></td></tr>
					</table>
					<br><br><br><br><br>
					<!-- /section title -->
					<div class="portfolio-filter">
						<div class="row" style="margin-left: 500px; margin-right: 200px;">
							<c:forEach var="category" items="${list }">
								<div class="col-3" style="margin-bottom: 5px;">
									<button type="button" data-filter="all"
										style="width: 200px; height: 50px; border-radius: 10px">${category.catName }</button>
								</div>
							</c:forEach>
						</div>
					</div>

					<!-- blog.html에서 가져온거 -->

					<div class="container">
						<div class="row">
							<!-- /section title -->
							<!-- single blog post -->

							<article class="col-md-3 col-sm-6 col-xs-12 ">
								<div class="post-item">
									<div class="media-wrapper">
										<img src="images/category/Pilates.jpg" style="width:300px; height:200px;"
											alt="amazing caves coverimage" class="img-fluid">
									</div>
									<div class="content">
										<h3>
											<a href="single-post.html">필라테스</a>
										</h3>
										<p>간략 설명</p>
										<p>2021-08-17 - 2022-08-16</p>
										<a class="custom-btn" href="single-post.html">가격</a>
									</div>
								</div>
							</article>
							<!-- /single blog post -->

							<!-- single blog post -->
							<article class="col-md-3 col-sm-6 col-xs-12 ">
								<div class="post-item">
									<div class="media-wrapper">
										<img src="images/category/Swimming.jpg" style="width:300px; height:200px;"
											alt="amazing caves coverimage" class="img-fluid">
									</div>
									<div class="content">
										<h3>
											<a href="single-post.html">수영</a>
										</h3>
										<p>간략 설명</p>
										<p>2021-08-17 - 2022-08-16</p>
										<a class="custom-btn" href="single-post.html">가격</a>
									</div>
								</div>
							</article>

							<!-- end single blog post -->

							<!-- single blog post -->
							<article class="col-md-3 col-sm-6 col-xs-12 ">
								<div class="post-item">
									<div class="media-wrapper">
										<img src="images/category/Yoga.jpg" style="width:300px; height:200px;"
											alt="amazing caves coverimage" class="img-fluid">
									</div>
									<div class="content">
										<h3>
											<a href="single-post.html">요가</a>
										</h3>
										<p>간략 설명</p>
										<p>2021-08-17 - 2022-08-16</p>
										<a class="custom-btn" href="single-post.html">가격</a>
									</div>
								</div>
							</article>
							
							<article class="col-md-3 col-sm-6 col-xs-12 ">
								<div class="post-item">
									<div class="media-wrapper">
										<img src="images/category/Gym.jpg" style="width:300px; height:200px;"
											alt="amazing caves coverimage" class="img-fluid">
									</div>
									<div class="content">
										<h3>
											<a href="single-post.html">헬스</a>
										</h3>
										<p>간략 설명</p>
										<p>2021-08-17 - 2022-08-16</p>
										<a class="custom-btn" href="single-post.html">가격</a>
									</div>
								</div>
							</article>


							<!-- /section title -->
							<!-- single blog post -->
						</div>
					</div>
				</div>
			</div>
		</div>



		<!-- blog.html에서 가져온거 끝 -->
	</section>
	<!-- End section -->

	<!-- Start Testimonial
=========================================== -->

	
				



	<jsp:include page="/WEB-INF/views/home/footer.jsp" />
			
		
	<!-- end footer -->



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