<!-- 파트너-강사수정페이지 -->

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

<title>My Page | Fit is Fit</title>

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
.rounded-circle {
	border-radius: 50% !important;
}
</style>
</head>

<body id="body">
	<jsp:include page="/WEB-INF/views/home/header.jsp" />

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
Start About Section
==================================== -->
	<section class="about" id="about">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="title text-center ">
						<h2>업체 정보</h2>
						<div class="border"></div>
					</div>
				</div>
				<div class="col-md-4" align="center">
					<div class="card" style="width: 300px">
						<img class="card-img-top img-thumbnail"
							src="images/team/${member.memPhoto }" alt="member image"
							style="width: 100%">
						<div class="card-body" align="right">
							<a href="#" class="btn btn-primary">수정</a>
						</div>
					</div>
					<br>
				</div>
				<div class="col-md-8">
					<table class="table">
						<tr>
							<th width=240px; height=70px;>이름</th>
							<td>${partner.parName }</td>
						</tr>
						<tr>
							<th height=70px;>이메일</th>
							<td>${partner.parEmail }</td>
						</tr>
						<tr>
							<th height=70px;>비밀번호</th>
							<td>${partner.parPassword }</td>
						</tr>
						<tr>
							<th height=70px;>지역</th>
							<td>${partner.regName }</td>
						</tr>
						<tr>
							<th height=70px;>주소</th>
							<td>${partner.parAddress }</td>
						</tr>
						<tr>
							<th height=70px;>전화번호</th>
							<td>${partner.parPhone }</td>
						</tr>
						<tr>
							<th height=70px;>소개</th>
							<td>${partner.parIntro }</td>
						</tr>
					</table>
					<div class="card-body" align="right">
						<a href="#" class="btn btn-primary">수정</a>
					</div>
				</div>
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</section>
	<!-- End section -->

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">비밀번호 변경</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form id="frm" name="frm" action="memUpdatePassword.do"
					method="post">
					<div class="modal-body">
						<div class="form-group">
							현재 비밀번호 : <input type="password" placeholder="Your Password"
								class="form-control" name="password" id="password">
						</div>
						<div class="border"
							style="width: 100%; background-color: lightgray;"></div>
						<div class="form-group">
							새 비밀번호 : <input type="password" placeholder="Your Password"
								class="form-control" name="newMemPassword" id="newMemPassword"
								onkeyup="checkPwd()">
						</div>
						<div class="form-group">
							비밀번호 확인 : <input type="password" placeholder="Your Password"
								class="form-control" name="newMemPasswordConfirm"
								id="newMemPasswordConfirm" onkeyup="checkPwd()">
						</div>
						<div id="checkNewPwd">동일한 암호를 입력하세요.</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" onclick="pwdCheck()">Save
							changes</button>
					</div>
				</form>
			</div>
		</div>
	</div>


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

	<script type="text/javascript">
		function checkPwd() {
			var f1 = document.forms[0];
			console.log(f1);
			var pw1 = f1.newMemPassword.value;
			var pw2 = f1.newMemPasswordConfirm.value;
			if (pw1 != pw2) {
				document.getElementById('checkNewPwd').style.color = "red";
				document.getElementById('checkNewPwd').innerHTML = "암호가 일치하지 않습니다.";
			} else {
				document.getElementById('checkNewPwd').style.color = "black";
				document.getElementById('checkNewPwd').innerHTML = "암호가 확인 되었습니다.";
			}
		}
		function pwdCheck() {
			var f1 = document.forms[0];
			console.log(f1);
			var pw1 = f1.newMemPassword.value;
			var pw2 = f1.newMemPasswordConfirm.value;
			var pw3 = '<c:out value="${session.memPassword}"/>';
			var pw4 = f1.password.value;
			console.log(pw3);
			if (pw1 != pw2 || pw3 != pw4) {
				alert('비밀번호가 일치하지 않습니다.');
			} else {
				alert('수정 완');
				frm.submit();
			}
		}
	</script>

</body>
</html>