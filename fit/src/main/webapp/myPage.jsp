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
.custom-border {
	height: 2px;
	margin: 20px auto 20px;
	position: relative;
	width: 200px;
	background: #4343FE;
}

.custom-nav {
	font-family: 'Gowun Dodum', sans-serif;
	border-bottom: 1px solid #4343FE;
	width: 100%;
	position: absolute;
	left: 50%;
	top: 24%;
	transform: translate(-50%, -50%);
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
	<div class="container">
		<div class="row">

			<!-- section title -->
			<div class="col-12">
				<div class="title text-center">
					<h2>회원 정보</h2>
					<div class="custom-border"></div>
					<p>My Page</p>
				</div>
			</div>
			<!-- /section title -->

			<!-- Contact Details -->
			<div class="col-2"></div>
			<div class="col-2"></div>
			<div class="col-2">
				<table>
					<tr>
						<td height="50px"><i class="tf-ion-android-globe"></i> <span>이름</span></td>
					</tr>
					<tr>
						<td height="50px"><i class="tf-ion-android-mail"></i> <span>이메일</span></td>
					</tr>
					<tr>
						<td height="50px"><i class="tf-ion-ios-home"></i> <span>비밀번호</span></td>
					</tr>
					<tr>
						<td height="50px"><i class="tf-ion-ios-home"></i> <span>생년월일</span></td>
					</tr>
					<tr>
						<td height="50px"><i class="tf-ion-ios-home"></i> <span>성별</span></td>
					</tr>
					<tr>
						<td height="50px"><i class="tf-ion-android-phone-portrait"></i>
							<span>전화번호</span></td>
					</tr>
				</table>
			</div>
			<div class="col-2">
				<div class="contact-details col-md-12">
					<table>
						<tr>
							<td height="50px"><span>${member.memName }이나은</span></td>
						</tr>
						<tr>
							<td height="50px"><span>${member.memEmail }aaa@aaa</span></td>
						</tr>
						<tr>
							<td height="50px"><span>${member.memPassword }1234</span></td>
						</tr>
						<tr>
							<td height="50px"><span>${member.memBirth }1994-10-30</span></td>
						</tr>
						<tr>
							<td height="50px"><span>${member.memGender }여</span></td>
						</tr>
						<tr>
							<td height="50px"><span>${member.memPhone }010-0000-0000</span></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
	<!--================================
=            Google Map            =
=================================-->


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