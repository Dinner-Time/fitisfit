<!-- 파트너-강사수정페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Bingo One page parallax responsive HTML Template ">

<meta name="author" content="Themefisher.com">

<title>My Page | Fit is Fit</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="plugins/lightbox2/dist/css/lightbox.min.css">
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
						<c:if test="${member.memPhoto != null }">
							<img class="card-img-top img-thumbnail"
								src="images/team/${member.memPhoto }" alt="member image"
								style="width: 100%">
						</c:if>
						<c:if test="${member.memPhoto == null}">
							<img class="card-img-top img-thumbnail"
								src="images/blog/generalProfile.jpg" alt="member image"
								style="width: 100%">
						</c:if>
						<div class="card-body" align="right">
							<a href="#" class="btn btn-primary">수정</a>
						</div>
					</div>
					<br>
				</div>
				<div class="col-md-8">
					<table class="table">
						<tr>
							<th height=70px;>이름</th>
							<td>${member.memName }</td>
						</tr>
						<tr>
							<th height=70px;>이메일</th>
							<td>${member.memEmail }</td>
						</tr>
						<tr>
							<th height=70px;>비밀번호</th>
							<td>${member.memPassword }
								<button type="button" class="btn btn-primary"
									style="float: right;" data-toggle="modal"
									data-target="#exampleModal">수정</button>
							</td>
						</tr>
						<tr>
							<th height=70px;>생년월일</th>
							<td>${member.memBirth }</td>
						</tr>
						<tr>
							<th height=70px;>성별</th>
							<td>${member.memGender }</td>
						</tr>
						<tr>
							<th height=70px;>전화번호</th>
							<td>${member.memPhone }
								<button type="button" class="btn btn-primary"
									style="float: right;">수정</button>
							</td>
						</tr>
					</table>
				</div>
				<div class="card-body" align="center">
					<button type="button" class="btn btn-primary" style="float: center;"
						data-toggle="modal" data-target="#exampleModal2">회원 탈퇴</button>
				</div>
			</div>
		</div>
	</section>

	<!-- Modal Start -->
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
	<!-- Modal End -->
	
	<!-- Modal Start -->
	<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">비밀번호 확인</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form id="frm2" name="frm2" action="memDelete.do"
					method="post">
					<div class="modal-body">
						<div class="form-group">
							비밀번호 : <input type="password" placeholder="Your Password"
								class="form-control" name="memDelPassword" id="memDelPassword"
								onkeyup="checkPwd2()">
						</div>
						<div class="form-group">
							비밀번호 확인 : <input type="password" placeholder="Your Password"
								class="form-control" name="memDelPasswordConfirm"
								id="memDelPasswordConfirm" onkeyup="checkPwd2()">
						</div>
						<div id="checkPwd">동일한 암호를 입력하세요.</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" onclick="memDelete()">탈퇴</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Modal End -->


	<jsp:include page="/WEB-INF/views/home/footer.jsp" />

	<script src="plugins/jquery/jquery.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ"></script>
	<script src="plugins/google-map/gmap.js"></script>
	<script src="plugins/form-validation/jquery.form.js"></script>
	<script src="plugins/form-validation/jquery.validate.min.js"></script>
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="plugins/parallax/jquery.parallax-1.1.3.js"></script>
	<script src="plugins/lightbox2/dist/js/lightbox.min.js"></script>
	<script src="plugins/slick/slick.min.js"></script>
	<script src="plugins/filterizr/jquery.filterizr.min.js"></script>
	<script src="plugins/smooth-scroll/smooth-scroll.min.js"></script>
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
		function checkPwd2() {
			var f2 = document.forms[1];
			var pw1 = f2.memDelPassword.value;
			var pw2 = f2.memDelPasswordConfirm.value;
			var pw3 = '<c:out value="${session.memPassword}"/>';
			if (pw1 != pw2 || pw1 != pw3 || pw2 != pw3) {
				document.getElementById('checkPwd').style.color = "red";
				document.getElementById('checkPwd').innerHTML = "암호가 일치하지 않습니다.";
			} else {
				document.getElementById('checkPwd').style.color = "black";
				document.getElementById('checkPwd').innerHTML = "암호가 확인 되었습니다.";
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
		function memDelete() {
			var f2 = document.forms[1];
			var pw1 = f2.memDelPassword.value;
			var pw2 = f2.memDelPasswordConfirm.value;
			var pw3 = '<c:out value="${session.memPassword}"/>';
			console.log(pw3);
			if (pw1 != pw2 || pw1 != pw3 || pw2 != pw3) {
				alert('비밀번호가 일치하지 않습니다.');
			} else {
				if(confirm('정말 탈퇴하시겠습니까?') == true) {
					alert('탈퇴 완');
					frm2.submit();
				} else {
					return;
				}
			}
		}
	</script>

</body>
</html>