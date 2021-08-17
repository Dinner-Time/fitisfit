
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

</head>

<body id="body">

	<!--
  Start Preloader
  ==================================== -->
	<div id="preloader">
		<div class='preloader'>
			<span></span> <span></span> <span></span> <span></span> <span></span>
			<span></span>
		</div>
	</div>
	<!--
  End Preloader
  ==================================== -->




	<!--
Fixed Navigation
==================================== -->
	<header class="navigation fixed-top">
		<div class="container">
			<!-- main nav -->
			<nav class="navbar navbar-expand-lg navbar-light">
				<!-- logo -->
				<a class="navbar-brand logo" href="index.html"> <img  style="width:118px;height: 82px;"
					class="logo-default" src="images/logo.png" alt="logo" /> <img  style="width:118px;height: 82px;"
					class="logo-white" src="images/logo.png" alt="logo" />
				</a>
				<!-- /logo -->
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navigation" aria-controls="navigation"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navigation">
					<ul class="navbar-nav ml-auto text-center">
						<li class="nav-item dropdown "><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> Homepage </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="index.html">Homepage</a> <a
									class="dropdown-item" href="onepage-slider.html">Onepage</a> <a
									class="dropdown-item" href="onepage-text.html">Onepage 2</a>
							</div></li>
						<li class="nav-item "><a class="nav-link" href="about.html">About
								Us</a></li>
						<li class="nav-item "><a class="nav-link" href="service.html">Services</a>
						</li>
						<li class="nav-item  active "><a class="nav-link"
							href="portfolio.html">Portfolio</a></li>
						<li class="nav-item "><a class="nav-link" href="team.html">Team</a>
						</li>
						<li class="nav-item "><a class="nav-link" href="pricing.html">Pricing</a>
						</li>
						<li class="nav-item "><a class="nav-link" href="contact.html">Contact</a>
						</li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> Pages </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="404.html">404 Page</a> <a
									class="dropdown-item" href="blog.html">Blog Page</a> <a
									class="dropdown-item" href="single-post.html">Blog Single
									Page</a>
							</div></li>
					</ul>
				</div>
			</nav>
			<!-- /main nav -->
		</div>
	</header>
	<!--
End Fixed Navigation
==================================== -->

	<section class="single-page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>Portfolio</h2>
					<ol class="breadcrumb header-bradcrumb">
						<li><a href="index.html">Home</a></li>
						<li class="active">Portfolio</li>
					</ol>
				</div>
			</div>
		</div>
	</section>

	<!-- Start Portfolio Section
		=========================================== -->

	<section class="portfolio section-sm" id="portfolio">
		<div class="container-fluid">
			<div class="row ">
				<div class="col-lg-12">

					<!-- section title -->
					<div class="title text-center">
						<div class="border" style="width:1200px;"></div>
						<h1>대구</h1>
						<div class="border" style="width:1200px;"></div>
					</div>
					<!-- /section title -->

					<div class="portfolio-filter">
						<button type="button" data-filter="all"  style="width:200px; height:50px;">헬스</button>
						<button type="button" data-filter="photography"  style="width:200px; height:50px;">요가</button>
						<button type="button" data-filter="ios"  style="width:200px; height:50px;">필라테스</button>
						<button type="button" data-filter="development"  style="width:200px; height:50px;">수영</button>
						<button type="button" data-filter="design"  style="width:200px; height:50px;">플라잉요가</button>
					</div>


					<!-- blog.html에서 가져온거 -->

					<div class="container">
						<div class="row">
							<!-- /section title -->
							<!-- single blog post -->
							<button type="button" class="prevArrow slick-arrow" style="display: block;"></button>
							<article class="col-md-4 col-sm-6 col-xs-12 clearfix ">
								<div class="post-item">
									<div class="media-wrapper">
										<img src="images/blog/post-1.jpg"
											alt="amazing caves coverimage" class="img-fluid">
									</div>

									<div class="content">
										<h3>
											<a href="single-post.html">프로그램1</a>
										</h3>
										
										<a class="btn btn-main" href="single-post.html">Read more</a>
									</div>
								</div>
							</article>
							<!-- /single blog post -->

							<!-- single blog post -->
							<article class="col-md-4 col-sm-6 col-xs-12 ">
								<div class="post-item">
									<div class="media-wrapper">
										<img src="images/blog/post-2.jpg"
											alt="amazing caves coverimage" class="img-fluid">
									</div>

									<div class="content">
										<h3>
											<a href="single-post.html">프로그램2</a>
										</h3>
										
										<a class="btn btn-main" href="single-post.html">Read more</a>
									</div>
								</div>
							</article>
							
							
							<!-- end single blog post -->

							<!-- single blog post -->
							<article class="col-md-4 col-sm-6 col-xs-12 ">
								<div class="post-item">
									<div class="media-wrapper">
										<img src="images/blog/post-3.jpg"
											alt="amazing caves coverimage" class="img-fluid">
									</div>

									<div class="content">
										<h3>
											<a href="single-post.html">프로그램3</a>
										</h3>
										
										<a class="btn btn-main" href="single-post.html">Read more</a>
									</div>
								</div>
							</article>
							
							
							<button type="button" class="nextArrow slick-arrow" style="display: block;"></button>
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

	<section class="testimonial section" id="testimonial">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!-- testimonial wrapper -->
					<div class="testimonial-slider">
						<!-- testimonial single -->
						<div class="item text-center">
							<i class="tf-ion-chatbubbles"></i>
							<!-- client info -->
							<div class="client-details">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Eum nulla, soluta dolorum. Eos earum, magni asperiores, unde
									corporis labore, enim, voluptatum officiis voluptates alias
									natus. Lorem ipsum dolor sit amet, consectetur adipisicing
									elit. Quia, officia. Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Quod, quia?</p>
							</div>
							<!-- /client info -->
							<!-- client photo -->
							<div class="client-thumb">
								<img src="images/client-logo/clients-1.jpg" class="img-fluid"
									alt="">
							</div>
							<div class="client-meta">
								<h3>William Martin</h3>
								<span>CEO , Company Name</span>
							</div>
							<!-- /client photo -->
						</div>
						<!-- /testimonial single -->

						<!-- testimonial single -->
						<div class="item text-center">
							<i class="tf-ion-chatbubbles"></i>
							<!-- client info -->
							<div class="client-details">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Eum nulla, soluta dolorum. Eos earum, magni asperiores, unde
									corporis labore, enim, voluptatum officiis voluptates alias
									natus. Lorem ipsum dolor sit amet, consectetur adipisicing
									elit. Quia, officia. Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Quod, quia?</p>
							</div>
							<!-- /client info -->
							<!-- client photo -->
							<div class="client-thumb">
								<img src="images/client-logo/clients-2.jpg" class="img-fluid"
									alt="">
							</div>
							<div class="client-meta">
								<h3>Emma Harrison</h3>
								<span>CEO , Company Name</span>
							</div>
							<!-- /client photo -->
						</div>
						<!-- /testimonial single -->

						<!-- testimonial single -->
						<div class="item text-center">
							<i class="tf-ion-chatbubbles"></i>
							<!-- client info -->
							<div class="client-details">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Eum nulla, soluta dolorum. Eos earum, magni asperiores, unde
									corporis labore, enim, voluptatum officiis voluptates alias
									natus. Lorem ipsum dolor sit amet, consectetur adipisicing
									elit. Quia, officia. Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Quod, quia?</p>
							</div>
							<!-- /client info -->
							<!-- client photo -->
							<div class="client-thumb">
								<img src="images/client-logo/clients-3.jpg" class="img-fluid"
									alt="">
							</div>
							<div class="client-meta">
								<h3>Alexander Lucas</h3>
								<span>CEO , Company Name</span>
							</div>
							<!-- /client photo -->
						</div>
						<!-- /testimonial single -->
					</div>
				</div>
				<!-- end col lg 12 -->
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</section>
	<!-- End Section -->




	<footer id="footer" class="bg-one">
		<div class="top-footer">
			<div class="container">
				<div class="row">
					<div class="col-sm-3 col-md-3 col-lg-3">
						<h3>about</h3>
						<p>Integer posuere erat a ante venenati dapibus posuere velit
							aliquet. Fusce dapibus, tellus cursus commodo, tortor mauris sed
							posuere.</p>
					</div>
					<!-- End of .col-sm-3 -->

					<div class="col-sm-3 col-md-3 col-lg-3">
						<ul>
							<li><h3>Our Services</h3></li>
							<li><a href="#">Graphic Design</a></li>
							<li><a href="#">Web Design</a></li>
							<li><a href="#">Web Development</a></li>
						</ul>
					</div>
					<!-- End of .col-sm-3 -->

					<div class="col-sm-3 col-md-3 col-lg-3">
						<ul>
							<li><h3>Quick Links</h3></li>
							<li><a href="#">Partners</a></li>
							<li><a href="#">About</a></li>
							<li><a href="#">FAQ’s</a></li>
							<li><a href="#">Badges</a></li>
						</ul>
					</div>
					<!-- End of .col-sm-3 -->

					<div class="col-sm-3 col-md-3 col-lg-3">
						<ul>
							<li><h3>Connect with us Socially</h3></li>
							<li><a href="#">Facebook</a></li>
							<li><a href="#">Twitter</a></li>
							<li><a href="#">Youtube</a></li>
							<li><a href="#">Pinterest</a></li>
						</ul>
					</div>
					<!-- End of .col-sm-3 -->

				</div>
			</div>
			<!-- end container -->
		</div>
		<div class="footer-bottom">
			<h5>Copyright 2016. All rights reserved.</h5>
			<h6>
				Design and Developed by <a href="">Themefisher</a>
			</h6>
			<h6>
				Distributed by <a href="https://themewagon.com/">Themewagon</a>
			</h6>
		</div>
	</footer>
	<!-- end footer -->


	<!-- end Footer Area
    ========================================== -->



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