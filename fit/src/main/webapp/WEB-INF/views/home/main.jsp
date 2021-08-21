<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Bingo One page parallax responsive HTML Template ">
<meta name="author" content="Themefisher.com">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>메인</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="plugins/lightbox2/dist/css/lightbox.min.css">
<link rel="stylesheet" href="plugins/animate/animate.css">
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="css/style.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>



<!-- 폰트 시작 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
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

.reg-cat-detail {
	font-family: 'Do Hyeon', sans-serif;
	font-size: 25px;
	text-align: center;
	color: white;
	text-shadow: 2px 2px 2px black;
	vertical-align: bottom;
	filter: brightness(100%);
	vertical-align: bottom;
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

h2 {
	font-family: 'Gowun Dodum', sans-serif;
}

#moreRegion {
	display: none;
}

#foldReg {
	display: none;
}
</style>

<<<<<<< HEAD
<script type="text/javascript">
		$(document).ready(function () {
			$(".moreRegion").hide();
			$("#showMoreReg").click(function () {
				$(".moreRegion").slideDown(1000);
				$("#showMoreReg").hide();
				$("#foldReg").show();
			})
=======
<script type="text/javascript">

	$(document).ready(function() {
		$(".moreRegion").hide();
		$("#showMoreReg").click(function() {
			$(".moreRegion").slideDown(400);
			$("#showMoreReg").hide();
			$("#foldReg").show();
		})
>>>>>>> refs/heads/main

			$("#foldReg").click(function () {
				$(".moreRegion").slideUp(1000, function () {
					$("#foldReg").hide();
					$("#showMoreReg").show();
				});
			})

			$(".moreCategory").hide();
			$("#showMoreCat").click(function () {
				$(".moreCategory").slideDown(400);
				$("#showMoreCat").hide();
				$("#foldCat").show();
			})

			$("#foldCat").hide();
			$("#foldCat").click(function () {
				$(".moreCategory").slideUp(400, function () {
					$("#foldCat").hide();
					$("#showMoreCat").show();
				});
			})

			let form = $('#frm');

			$('.reg-submit').click(function () {
				$(form)
					.attr('action', 'regSelect.do')
					.find($('input')
						.attr('name', 'regId')
						.val($(this).attr('data-regid')));

				$(form).submit();
			});

			$('.cat-submit').click(function () {
				$(form)
					.attr('action', 'catSelect.do')
					.find($('input')
						.attr('name', 'catId')
						.val($(this).attr('data-catid')));
				console.log($(this).attr('data-catid'));

				$(form).submit();
			})
		})
	</script>

</head>

<body id="body">
	<jsp:include page="/WEB-INF/views/home/header.jsp" />
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<!-- 검색바 시작 -->
		<nav class="navbar navbar-expand-lg navbar-light custom-nav"
			style="z-index: 999;">
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav ml-auto text-center">
					<li class="nav-item dropdown active"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 지역 </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<c:forEach var="region" items="${regList}">
								<a class="dropdown-item" href="#">${region.regName}</a>
							</c:forEach>
						</div></li>
					<li class="nav-item dropdown active"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 카테고리 </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<c:forEach var="category" items="${catList}">
								<a class="dropdown-item" href="#">${category.catName}</a>
							</c:forEach>
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
						<button type="button" class="btn btn-primary"
							onclick="(function(){
							location.href = 'NaverMap.do';
						})()">내
							주변 찾기</button>
					</li>
				</ul>
			</div>
		</nav>
		<!-- 검색바 끝 -->
	</div>

	<!-- 지역별 메뉴 시작 -->
	<section class="service-2 section">
		<div class="container">
			<div class="row">

				<div class="col-12">
					<!-- section title -->
					<div class="title text-center">
						<h2>지역별</h2>
						<div class="border"></div>
					</div>
					<!-- /section title -->
				</div>

				<div class="col-md-12">
					<!-- START ROW -->
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
					<!-- END ROW -->

					<!-- Start Button -->
					<div class="row">
						<div class="col" align="center">
							<button type="button" id="showMoreReg" class="btn btn-main mt-20">더보기</button>
						</div>
					</div>
					<!-- End Button -->

					<!-- 더보기 지역 -->
					<!-- START ROW -->
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
					<!-- END ROW -->

					<!-- Start Button -->
					<div class="row">
						<div class="col" align="center">
							<button type="button" id="foldReg" class="btn btn-main mt-20">접기</button>
						</div>
					</div>
					<!-- End Button -->
				</div>
				<!-- END COL -->
			</div>
			<!-- 지역별 메뉴 끝 -->

			<br>
			<br>
			<hr>
			<br>
			<br>

			<!-- 카테고리별 메뉴 시작 -->
			<div class="row">
				<div class="col-12">
					<!-- section title -->
					<div class="title text-center">
						<h2>카테고리별</h2>
						<div class="border"></div>
					</div>
					<!-- /section title -->
				</div>
				<div class="col-md-12">
					<div class="row text-center">
						<c:forEach var="category" items="${catList}" begin="0" end="3">
							<div class="col-md-3 col-sm-6 col-xs-12">
								<<<<<<< HEAD
								<div class="service-item cat-submit"
									data-regid="${category.catId}"
									style="background: url('images/region/${category.catPhoto}');">
									=======
									<div class="service-item"
										style="background: url('images/category/${category.catPhoto}');">
										>>>>>>> refs/heads/main
										<div class="filter"></div>
										<p class="reg-cat-title">${category.catName}</p>
									</div>
								</div>
						</c:forEach>
					</div>
					<!-- Start Button -->
					<div class="row">
						<div class="col" align="center">
							<button type="button" id="showMoreCat" class="btn btn-main mt-20">더보기</button>
						</div>
					</div>
					<!-- End Button -->

					<!-- 더보기 카테고리 -->
					<!-- START ROW -->
					<div class="moreCategory row text-center">
						<c:forEach var="category" items="${catList}" begin="4">
							<div class="col-md-3 col-sm-6 col-xs-12">
								<<<<<<< HEAD
								<div class="service-item cat-submit"
									data-regid="${category.catId}"
									style="background: url('images/region/${category.catPhoto}');">
									=======
									<div class="service-item"
										style="background: url('images/category/${category.catPhoto}');">
										>>>>>>> refs/heads/main
										<div class="filter"></div>
										<p class="reg-cat-title">${category.catName}</p>
									</div>
								</div>
						</c:forEach>
					</div>
					<!-- END ROW -->

					<!-- Start Button -->
					<div class="row">
						<div class="col" align="center">
							<button type="button" id="foldCat" class="btn btn-main mt-20">접기</button>
						</div>
					</div>
					<!-- End Button -->
				</div>
			</div>
			<!-- 카테고리별 메뉴 끝 -->
		</div>
		<!-- End container -->
	</section>
	<!-- End section -->

	<<<<<<< HEAD
	<form id="frm" action="" method="POST">
		<input>
	</form>
	=======
	<!-- 인기 프로그램 시작 -->
	<section class="testimonial section" id="testimonial">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!-- testimonial wrapper -->
					<div class="testimonial-slider">
						<!-- testimonial single -->
						<div class="item text-center">
							<div align="center">
								<img src="images/program/GymProgram1.jpg" class="img-fluid"
									alt="">
							</div>
							<br>
							<div class="client-meta">
								<h3>파워짐 상설 헬스 프로그램</h3>
								<span>파워짐</span>
							</div>
						</div>
						<!-- /testimonial single -->

						<!-- testimonial single -->
						<div class="item text-center">
							<div align="center">
								<img src="images/program/YogaProgram1.jpg" class="img-fluid"
									alt="">
							</div>
							<br>
							<div class="client-meta">
								<h3>샨티요가센터 상반기 그룹요가</h3>
								<span>샨티요가센터</span>
							</div>
						</div>
						<!-- /testimonial single -->

						<!-- testimonial single -->
						<div class="item text-center">
							<div class="client-thumb">
								<img src="images/client-logo/clients-3.jpg" class="img-fluid"
									alt="">
							</div>
							<br>
							<div class="client-meta">
								<h3>인기 프로그램3</h3>
								<span>센터3</span>
							</div>
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
	<!-- 인기 프로그램 끝 -->
	>>>>>>> refs/heads/main

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