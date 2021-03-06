<!-- 파트너-강사수정페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Bingo One page parallax responsive HTML Template ">

<meta name="author" content="Themefisher.com">

<title>회원 관리 | Fit is Fit</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
<link rel="stylesheet" href="plugins/animate/animate.css">
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="css/style.css">
<style type="text/css">
.rounded-circle {
	border-radius: 50% !important;
}
</style>
</head>

<body id="body">
	<jsp:include page="/WEB-INF/views/home/header.jsp" />

	<div id="preloader">
		<div class='preloader'>
			<span></span> <span></span> <span></span> <span></span> <span></span>
			<span></span>
		</div>
	</div>

	<section class="about" id="about">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="title text-center ">
						<h2>회원 정보</h2>
						<div class="border"></div>
					</div>
				</div>
				<div class="col-md-4" align="center">
					<div class="card" style="width: 300px">
						<img class="card-img-top" src="images/member/${member.memPhoto}"
							alt="Card image" style="width: 100%">
						<div class="card-body" align="center">
							${member.memName }
						</div>
					</div>
					<br>
				</div>
				<div class="col-md-8">
					<p>
					<table class="table">
						<tr>
							<th width="190px">가입일</th>
							<td>${member.memSubDate }</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>${member.memEmail }</td>
						</tr>
						<tr>
							<th>성별</th>
							<td>${member.memGender }</td>
						</tr>
						<tr>
							<th>생년월일</th>
							<td>${member.memBirth }
						</tr>
						<tr>
							<th>전화번호</th>
							<td>${member.memPhone }</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>${member.memAddress }</td>
						</tr>
						<tr>
							<th>상태</th>
							<td>${member.memState }</td>
						</tr>
					</table>
					<div align="right">
						<a href="#" class="btn btn-primary">수정</a>
					</div>
				</div>
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</section>
	<!-- End section -->


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