<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>피트다 피트!!</title>

	<!-- CSS ================================================== -->
	<!-- Favicon -->
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
	<!-- Themefisher Icon font -->
	<link rel="stylesheet" href="plugins/themefisher-font/style.css">
	<!-- bootstrap.min css -->
	<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
	<!-- Lightbox.min css -->
	<link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
	<!-- animation css -->
	<link rel="stylesheet" href="plugins/animate/animate.css">
	<!-- Slick Carousel -->
	<link rel="stylesheet" href="plugins/slick/slick.css">
	<!-- Main Stylesheet -->
	<link rel="stylesheet" href="css/style.css">

	<!-- 폰트 시작 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
	<!-- 폰트 끝 -->

	<style type="text/css">
		.container-nav {
			position: absolute;
			left: 0;
			right: 0;
			top: 50%;
			-webkit-transform: translateY(-50%);
			transform: translateY(-50%);
			left: 0;
			right: 0;
			top: 40%;
			-webkit-transform: translateY(-50%);
		}

		.reg-cat-title {
			font-family: 'Black Han Sans', sans-serif;
			font-size: 63px;
			text-align: center;
			color: white;
			text-shadow: 5px 5px 5px black;
			filter: brightness(100%);
		}

		.service-item {
			position: relative;
			overflow: hidden;
			background-position: center;
			object-fit: cover;
			cursor: pointer;
			height: 300px;
		}

		.service-item .filter {
			background-color: gray;
			position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			opacity: .4;
			transition: all .5s;
		}

		.btn-main {
			background: #4343fe;
		}

		.btn-main:hover {
			background: white;
			border-color: #4343fe;
			color: black;
		}

		.testimonial {
			background: #4343fe;
		}

		.service-item:hover .filter {
			transition: all .5s;
			opacity: 0;
		}

		.custom-nav {
			border: 1px solid #4343FE;
			border-radius: 20px;
			position: absolute;
			left: 50%;
			top: 27%;
			transform: translate(-50%, -50%);
		}

		li {
			font-family: 'Gowun Dodum', sans-serif;
			font-size: 20px;
			margin-left: 10px;
			margin-right: 10px;
		}

		.hide {
			display: none;
		}
	</style>
</head>

<body id="body">
	<jsp:include page="/WEB-INF/views/home/header.jsp" />
	<!-- 페이지 로딩 효과 -->
	<div id="preloader">
		<div class='preloader'>
			<span></span> <span></span> <span></span> <span></span> <span></span>
			<span></span>
		</div>
	</div>
	<!-- 페이지 로딩 효과 -->

	<!-- container -->
	<div class="container">
		<!-- 검색바 -->
		<nav class="navbar navbar-expand-lg navbar-light custom-nav" style="z-index: 999;">
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav ml-auto text-center">
					<!-- 지역 버튼 -->
					<li class="nav-item dropdown active">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 지역 </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<c:forEach var="region" items="${regList}">
								<a class="dropdown-item" href="#">${region.regName}</a>
							</c:forEach>
						</div>
					</li>
					<!-- 지역 버튼 -->
					<!-- 카테고리 버튼 -->
					<li class="nav-item dropdown active">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 카테고리 </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<c:forEach var="category" items="${catList}">
								<a class="dropdown-item" href="#">${category.catName}</a>
							</c:forEach>
						</div>
					</li>
					<!-- 카테고리 버튼 -->
					<!-- 센터 버튼 -->
					<li class="nav-item dropdown active"><a class="nav-link dropdown-toggle" href="#"
							id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> 센터 </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">파워짐</a> <a class="dropdown-item" href="#">샨띠요가센터</a>
						</div>
					</li>
					<!-- 센터 버튼 -->
					<!-- 프로그램 버튼 -->
					<li class="nav-item dropdown active"><a class="nav-link dropdown-toggle" href="#"
							id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> 프로그램 </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">파워짐 상설 헬스 프로그램</a> <a class="dropdown-item"
								href="#">샨티요가센터 상반기 그룹요가</a>
						</div>
					</li>
					<!-- 프로그램 버튼 -->
					<!-- 검색 버튼 -->
					<li>
						<button type="button" class="btn btn-outline-primary">검색</button>
					</li>
					<!-- 검색 버튼 -->
					<!-- 내 주변 찾기 버튼 -->
					<li>
						<button type="button" class="btn btn-primary" onclick="(function(){
							location.href = 'NaverMap.do';
						})()">내주변 찾기</button>
					</li>
					<!-- 내 주변 찾기 버튼 -->
				</ul>
			</div>
		</nav>
		<!-- 검색바 끝 -->
	</div>
	<!-- container -->

	<br><br><br><br>

	<section class="service-2 section">
		<!-- container -->
		<div class="container">
			<!-- 지역별 메뉴 -->
			<div class="row">
				<div class="col-12">
					<div class="title text-center">
						<h2>지역별</h2>
						<div class="border"></div>
					</div>
				</div>
				<!-- 지역 카드들 -->
				<div class="col-md-12">
					<!-- 홈에서 보이는 카드들 -->
					<div class="row text-center">
						<c:forEach var="region" items="${regList}" begin="0" end="3">
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="service-item reg-submit"
									style="background: url('images/region/${region.regPhoto}');"
									data-regid="${region.regId}">
									<div class="filter"></div>
									<p class="reg-cat-title">${region.regName}</p>
								</div>
							</div>
						</c:forEach>
					</div>
					<!-- 홈에서 보이는 카드들 -->

					<!-- 숨겨져있는 카드들 -->
					<div class="moreRegion row text-center">
						<c:forEach var="region" items="${regList}" begin="4">
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="service-item reg-submit"
									style="background: url('images/region/${region.regPhoto}');"
									data-regid="${region.regId}">
									<div class="filter"></div>
									<p class="reg-cat-title">${region.regName}</p>
								</div>
							</div>
						</c:forEach>
					</div>
					<!-- 숨겨져있는 카드들 -->

					<!-- 더보기, 접기 버튼 -->
					<div class="row">
						<div class="col text-center">
							<button type="button" id="regToggle" class="btn btn-main mt-20">더보기</button>
						</div>
					</div>
					<!-- 더보기, 접기 버튼 -->

				</div>
				<!-- 지역 카드들 -->
			</div>
			<!-- 지역별 메뉴 -->

			<br> <br>
			<hr>
			<br> <br>

			<!-- 카테고리별 메뉴 시작 -->
			<div class="row">
				<div class="col-12">
					<div class="title text-center">
						<h2>카테고리별</h2>
						<div class="border"></div>
					</div>
				</div>
				<!-- 카테고리 카드들 -->
				<div class="col-md-12">
					<!-- 홈에서 보이는 카드들 -->
					<div class="row text-center">
						<c:forEach var="category" items="${catList}" begin="0" end="3">
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="service-item cat-submit" data-catid="${category.catId}"
									style="background: url('images/category/${category.catPhoto}');">
									<div class="filter"></div>
									<p class="reg-cat-title">${category.catName}</p>
								</div>
							</div>
						</c:forEach>
					</div>
					<!-- 홈에서 보이는 카드들 -->

					<!-- 숨겨져있는 카드들 -->
					<div class="moreCategory row text-center">
						<c:forEach var="category" items="${catList}" begin="4">
							
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="service-item cat-submit" data-catid="${category.catId}"
									style="background: url('images/category/${category.catPhoto}');">
									<div class="filter"></div>
									<p class="reg-cat-title">${category.catName}</p>
								</div>
							</div>
						</c:forEach>
					</div>
					<!-- 숨겨져있는 카드들 -->

					<!-- 더보기, 접기 버튼 -->
					<div class="row">
						<div class="col" align="center">
							<button type="button" id="catToggle" class="btn btn-main mt-20">더보기</button>
						</div>
					</div>
					<!-- 더보기, 접기 버튼 -->

				</div>
				<!-- 카테고리 카드들 -->
			</div>
			<!-- 카테고리별 메뉴 끝 -->
		</div>
		<!-- container -->
	</section>

	<form id="frm" action="" method="POST">
		<input type="hidden">
	</form>

	<!-- 인기 프로그램 시작 -->
	<!-- <section class="testimonial section" id="testimonial">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="testimonial-slider">
						<div class="item text-center">
							<div align="center">
								<img src="images/program/GymProgram1.jpg" class="img-fluid" alt="">
							</div>
							<br>
							<div class="client-meta">
								<h3>파워짐 상설 헬스 프로그램</h3>
								<span>파워짐</span>
							</div>
						</div>
						<div class="item text-center">
							<div align="center">
								<img src="images/program/YogaProgram1.jpg" class="img-fluid" alt="">
							</div>
							<br>
							<div class="client-meta">
								<h3>샨티요가센터 상반기 그룹요가</h3>
								<span>샨티요가센터</span>
							</div>
						</div>
						<div class="item text-center">
							<div class="client-thumb">
								<img src="images/client-logo/clients-3.jpg" class="img-fluid" alt="">
							</div>
							<br>
							<div class="client-meta">
								<h3>인기 프로그램3</h3>
								<span>센터3</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- 인기 프로그램 끝 -->


	<jsp:include page="/WEB-INF/views/home/footer.jsp" />

	<!-- 자바 스크립트 -->
	<!-- Main jQuery -->
	<script src="plugins/jquery/jquery.min.js"></script>
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
	<!-- Custom for this Page -->
	<script type="text/javascript">
		$(document).ready(function () {
			// 숨겨진 지역들
			let moreRegion = $(".moreRegion");
			$(moreRegion).hide();
			// 숨겨진 카테고리들
			let moreCategory = $(".moreCategory");
			$(moreCategory).hide();

			// 지역 더보기, 접기
			$("#regToggle").click(function () {
				$(moreRegion).slideToggle(500);
				if ($(this).text() == '더보기') {
					$(this).text('접기');
				} else {
					$(this).text('더보기');
				}
			});
			// 카테고리 더보기, 접기
			$("#catToggle").click(function () {
				$(moreCategory).slideToggle(400);
				if ($(this).text() == '더보기') {
					$(this).text('접기');
				} else {
					$(this).text('더보기');
				}
			});

			// 데이터 전송을 위한 Form
			let form = $('#frm');

			// 지역 카드를 클릭 했을때
			$('.reg-submit').click(function () {
				$(form).attr('action', 'regSelectList.do').find(
					$('input').attr('name', 'regId').val(
						$(this).attr('data-regid')));
				$(form).submit();
			});
			// 카테고리 카드를 클릭 했을때
			$('.cat-submit').click(function () {
				$(form).attr('action', 'catSelectList.do').find(
					$('input').attr('name', 'catId').val(
						$(this).attr('data-catid')));
				$(form).submit();
			})
		})
	</script>
</body>

</html>