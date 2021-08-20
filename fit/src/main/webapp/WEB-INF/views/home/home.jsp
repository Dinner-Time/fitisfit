<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>피트다 피트!!</title>
<!-- Mobile Specific Meta ================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS ================================================== -->
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
</head>

<body id="body">
	<!-- 페이지 로딩 효과 -->
	<div id="preloader">
		<div class='preloader'>
			<span></span> <span></span> <span></span> <span></span> <span></span>
			<span></span>
		</div>
	</div>
	<!-- 페이지 로딩 효과 -->
	<jsp:include page="header.jsp" />
	<div style="height: 100vh;"class="d-flex justify-content-between align-items-center">
		<a style="color: #000;"href="proList.do">program</a>
		<a style="color: #000;" href="salTest.do">sales</a>
		<a style="color: #000;" href="timTest.do">timetable</a>
		<a style="color: #000;" href="catSelectList.do">category</a>
		<a style="color: #000;" href="regSelectList.do">region</a>
		<a style="color: #000;" href="insSelectList.do">instructor</a>
		<a style="color: #000;" href="memTest.do">member</a>
		<a style="color: #000;" href="parTest.do">partner</a>
		<a style="color: #000;" href="revSelectList.do">reviewSelectList</a>
		<a style="color: #000;" href="revSelectListByAdm.do">revSelectListByAdm</a>
		<a style="color: #000;" href="wisList.do">wishlist</a>
		<a style="color: #000;" href="hisInsertForm.do">history</a>
		<a style="color: #000;" href="NaverMap.do">naverMap</a>
	</div>
	<jsp:include page="footer.jsp" />

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
</body>
</html>