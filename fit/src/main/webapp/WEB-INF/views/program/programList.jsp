<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

<title>피트다 피트 | 프로그램 리스트</title>

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

.custom-nav {
	border: 1px solid #4343FE;
	border-radius: 20px;
	position: relative;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
}

.custom-ul {
	margin-top: 50px;
	position: relative;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
}

li {
	font-family: 'Do Hyeon', sans-serif;
	font-size: 25px;
	margin-left: 10px;
	margin-right: 10px;
}

</style>
</head>

<body id="body">
	<div id="preloader">
		<div class='preloader'>
			<span></span> <span></span> <span></span> <span></span> <span></span>
			<span></span>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/home/header.jsp" />
	<section class="service-2 section">
		<div class="container col-11">
			<!-- main nav -->
			<nav class="navbar navbar-inverse navbar-expand-lg navbar-light custom-nav"
				style="z-index: 999;">
				<div class="collapse navbar-collapse" id="navigation">
					<ul class="navbar-nav text-center custom-ul">
						<li class="nav-item dropdown active"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> 지역별 </a>
							<div class="dropdown-menu custom-dropdown"
								aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="#">서울</a> <a
									class="dropdown-item" href="#">인천</a> <a class="dropdown-item"
									href="#">대전</a> <a class="dropdown-item" href="#">대구</a>
							</div></li>
						<li class="nav-item dropdown active"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> 카테고리 </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="#">헬스</a> <a
									class="dropdown-item" href="#">요가</a> <a class="dropdown-item"
									href="#">필라테스</a> <a class="dropdown-item" href="#">기타</a>
							</div></li>
						<li class="nav-item dropdown active"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> 센터 </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="#">파워짐</a> <a
									class="dropdown-item" href="#">샨띠요가센터</a>
							</div></li>
						<li class="nav-item dropdown active"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> 프로그램 </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="#">파워짐 상설 헬스 프로그램</a> <a
									class="dropdown-item" href="#">샨티요가센터 상반기 그룹요가</a>
							</div></li>
						<li>
							<button type="button" class="btn btn-outline-primary">검색</button>
						</li>
						<li>
							<button type="button" class="btn btn-primary">내 주변 찾기</button>
						</li>
					</ul>
				</div>
			</nav>
			<!-- /main nav -->
		</div>
		<div class="container">
			<div class="row">
				<!-- section title -->
				<div class="col-12">
					<div class="title text-center ">
						<h2>
							Program <span class="color">List</span>
						</h2>
						<div class="custom-border"></div>
						<p>See that?</p>
					</div>
				</div>
				<!-- /section title -->
				<!-- single blog post -->
				<c:forEach var="pro" items="${list }">
					<article class="col-md-3 col-sm-6 col-xs-12 clearfix">
						<div class="service-item" style="padding: 20px 20px;">
							<div class="media-wrapper">
								<img src="${pro.proPhoto }" alt="Program Photo" class="img-fluid">
							</div>
							<br>
							<div class="content">
								<h3>
									${pro.proName }
								</h3>
								<p>${pro.proDesc }</p>
								<p>${pro.proSince }
								<c:if test="${pro.proPeriod != 0}"> ~ ${pro.proPeriod }개월</c:if></p>
								<a class="custom-btn" href="single-post.html">${pro.proPrice*(100 - pro.proSale3)*0.01}&#8361부터</a>
							</div>
						</div>
					</article>
				</c:forEach>
				<!-- /single blog post -->
				
				<!-- single blog post -->
				<article class="col-md-3 col-sm-6 col-xs-12 ">
					<div class="service-item">
						<div class="media-wrapper">
							<img src="images/blog/post-2.jpg" alt="amazing caves coverimage"
								class="img-fluid">
						</div>
						<br>
						<div class="content">
							<h3>
								요가
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
					<div class="service-item">
						<div class="media-wrapper">
							<img src="images/blog/post-3.jpg" alt="amazing caves coverimage"
								class="img-fluid">
						</div>
						<br>
						<div class="content">
							<h3>
								필라테스
							</h3>
							<p>간략 설명</p>
							<p>2021-08-17 - 2022-08-16</p>
							<a class="custom-btn" href="single-post.html">가격</a>
						</div>
					</div>
				</article>
				<!-- end single blog post -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</section>
	<jsp:include page="../home/footer.jsp" />
</body>


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


</html>