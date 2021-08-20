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

<title>수강내역</title>

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
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<!-- 폰트 끝 -->



<style type="text/css">
.custom-nav {
	font-family: 'Gowun Dodum', sans-serif;
	border-bottom: 1px solid #4343FE;
	width: 100%;
	position: absolute;
	left: 50%;
	top: 24%;
	transform: translate(-50%, -50%);
}

.blog {
	background: white;
}

.content {
	height: 300px;
	text-align: center;
	position: relative;
	overflow: hidden;
	background-position: center;
	object-fit: cover;
	cursor: pointer;
}

/* 수강 중 */
.badge-primary {
	width: 150px;
	background: #4169E1;
	color: white;
	border: 0px solid lightgray;
	border-radius: 20px;
	height: 80px;
	padding-top: 18px;
}

.badge-primary:hover {
	background: #B0C4DE;
}
/* 수강 완료 */
.badge-secondary {
	width: 120px;
	background: #696969;
	color: white;
	border: 0px solid lightgray;
	border-radius: 20px;
	height: 80px;
	padding-top: 18px;
}

.badge-secondary:hover {
	background: #C0C0C0;
}

h4 {
	font-family: 'Do Hyeon', sans-serif;
	text-shadow: 2px 2px 2px black;
	font-size:17px;
}

h3 {
	font-family: 'Do Hyeon', sans-serif;
	font-size: 25px;
	text-shadow: 2px 2px 2px black;
}
.btn-primary{
	font-family: 'Gowun Dodum', sans-serif;
}

.post-item .content h3 a {
	color: white;
}

.content:hover{
 	transition: all .5s;
	opacity: 0.8;

}
/* 지역, 카테고리 dropbar */
.dropbar {
	border: 1px solid white;
	background: #0069d9;
	border-radius: 20px;
	position: absolute;
	left: 75%;
	top: 30%;
	transform: translate(-20%, -20%);
	font-family: 'Gowun Dodum', sans-serif;
}
.navbar-light .navbar-nav .active>.nav-link, 
.navbar-light .navbar-nav .nav-link.active, .navbar-light 
.navbar-nav .nav-link.show, .navbar-light .navbar-nav .show>.nav-link {
    color: rgb(255 255 255 / 90%);
}
</style>
</head>


<body id="body">
	<jsp:include page="/WEB-INF/views/home/header.jsp" />
	<nav class="navbar navbar-expand-lg navbar-light custom-nav">
		<div class="collapse navbar-collapse" id="navigation">
			<ul class="navbar-nav text-center">
				<li style="margin-left: 50px">회원정보</li>
				<li style="margin-left: 50px">수강내역</li>
				<li style="margin-left: 50px">위시리스트</li>
				<li style="margin-left: 50px">고객센터</li>
			</ul>
		</div>
	</nav>

	<br>
	<section class="blog" id="blog">
		<div class="container">
			<div class="row">

				<div class="col-12">
					<div class="title text-center "></div>
				</div>

				<nav class="navbar navbar-expand-lg navbar-light dropbar"
					style="z-index: 999;">
					<div class="collapse navbar-collapse" id="navigation">
						<ul class="navbar-nav ml-auto text-center">
							<li class="nav-item dropdown active"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> 지역 </a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="#">서울</a> <a
										class="dropdown-item" href="#">인천</a> <a class="dropdown-item"
										href="#">대전</a> <a class="dropdown-item" href="#">대구</a> <a
										class="dropdown-item" href="#">부산</a>
								</div></li>
							<li class="nav-item dropdown active"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> 카테고리 </a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="#">헬스</a> <a
										class="dropdown-item" href="#">요가</a> <a class="dropdown-item"
										href="#">필라테스</a> <a class="dropdown-item" href="#">수영</a>
								</div></li>
						</ul>
					</div>
				</nav>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<!-- /section title -->
				<!-- single blog post -->
				<article class="col-md-3 col-sm-6 col-xs-12 ">
					<div class="post-item">
						<div class="media-wrapper" style="background: url('images/category/Swimming.jpg')">
						<div class="badge badge-secondary">
								<p />
								<h4>수강 완료</h4>
							</div>
						</div>
						
						<div class="content">
							<h3>
								<a href="single-post.html">필라테스</a>
							</h3>
							<a href="#" class="btn btn-primary">후기 작성</a>
							<a href="#" class="btn btn-primary">수강 취소</a>
						</div>
					</div>
				</article>
				<!-- /single blog post -->

				<!-- single blog post -->
				<article class="col-md-3 col-sm-6 col-xs-12 clearfix ">
					<div class="post-item">
						<div class="content"
							style="background: url('images/category/Swimming.jpg')">
							<div class="badge badge-secondary">
								<p />
								<h4>수강 완료</h4>
							</div>
							<h3>
								<br> <a href="#">수영</a>
							</h3>
							<br> <br> <a href="#" class="btn btn-primary">후기 작성</a>
						</div>
					</div>
				</article>
				<!-- end single blog post -->

				<!-- single blog post -->
				<article class="col-md-3 col-sm-6 col-xs-12 clearfix ">
					<div class="post-item">
						<div class="content"
							style="background: url('images/category/Yoga.jpg')">
							<div class="badge badge-secondary">
								<p />
								<h4>수강 완료</h4>
							</div>
							<h3>
								<br> <a href="#">요가</a>
							</h3>
							<br> <br> <a href="#" class="btn btn-primary">후기 작성</a>
						</div>
					</div>
				</article>
				<article class="col-md-3 col-sm-6 col-xs-12 clearfix ">
					<div class="post-item">
						<div class="content"
							style="background: url('images/category/Gym.jpg')">
							<div class="badge badge-secondary">
								<p />
								<h4>수강 완료</h4>
							</div>
							<h3>
								<br> <a href="#">헬스</a>
							</h3>
							<br> <br> <a href="#" class="btn btn-primary">후기 작성</a>
						</div>
					</div>
				</article>
				<!-- end single blog post -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</section>
	<!-- end container -->
	<!--================================
=            Google Map            =
=================================-->
<br><br><br><br>
<jsp:include page="/WEB-INF/views/home/footer.jsp" />

	<!-- 자바 스크립트 -->
	<script src="plugins/jquery/jquery.min.js"></script>
	<script src="plugins/form-validation/jquery.form.js"></script>
	<script src="plugins/form-validation/jquery.validate.min.js"></script>
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="plugins/parallax/jquery.parallax-1.1.3.js"></script>
	<script src="plugins/lightbox2/dist/js/lightbox.min.js"></script>
	<script src="plugins/slick/slick.min.js"></script>
	<script src="plugins/filterizr/jquery.filterizr.min.js"></script>
	<script src="plugins/smooth-scroll/smooth-scroll.min.js"></script>
	<script src="js/script.js"></script>

</body>
</html>