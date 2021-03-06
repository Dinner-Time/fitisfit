<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Bingo One page parallax responsive HTML Template ">

<meta name="author" content="Themefisher.com">

<title>환영합니다! | Fit is Fit</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
<link rel="stylesheet" href="plugins/animate/animate.css">
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="css/style.css">

<style type="text/css">
.custom-border {
	height: 2px;
	margin: 20px auto 20px;
	position: relative;
	width: 100%;
	background: gray;
}
#parPassword, #parPasswordConfirm {
	font-family: sans-serif;
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

	<section class="about" id="about">
		<div class="container">
			<form id="parInsert" name="parInsert" action="parInsert.do" method="post" enctype="multipart/form-data">
			<div class="row">
					<div class="card col-md-6" style="border: none;">
						<div class="card" style="width: 100%; margin-top: 100px;">
							<img class="card-img-top img-thumbnail" src="images/partner/gymPictogram.jpg" alt="partner image"
								style="width: 100%">
							<div class="card-body">
								<input type="file" id="parPhoto" name="parPhoto">
							</div>
						</div>
					</div>
					<!-- / End Contact Details -->

					<!-- Contact Form -->
					<div class="card col-md-6" style="border: none;">
						<div class="card-header text-black" align="center"
							style="background-color: white; border: none; margin-top: 10px">
							<h2 class="mt-2 font-weight-normal">파트너 등록</h2>
							<div class="custom-border"></div>
						</div>
						<div class="card-body">
							<div class="form-group">
								<input type="email" class="form-control" id="parEmail"
									name="parEmail" placeholder="이메일을 입력해주세요." required>
							</div>
							<div class="form-group">
								<input type="password" class="form-control" id="parPassword"
									name="parPassword" placeholder="패스워드를 입력해주세요." required
									onkeyup="checkPwd()">
							</div>
							<div class="form-group">
								<input type="password" class="form-control"
									id="parPasswordConfirm" name="parPasswordConfirm"
									placeholder="패스워드 확인." required onkeyup="checkPwd()">
							</div>
							<div id="checkPwd">동일한 암호를 입력하세요.</div>
							<br>
							<div class="form-group">
								<input type="text" class="form-control" id="parName"
									name="parName" placeholder="이름을 입력해주세요." required>
							</div>
							<div class="form-group">
								<input type="hidden" id="parRegId" name="parRegId" value="">
							</div>
							<div class="form-group">
								<label id="phoneLabel" class="text-danger" for="parPhone"></label>
								<input type="text" class="form-control" id="parPhone"
									name="parPhone" placeholder="전화번호를 입력해주세요." required>
							</div>
							<div class="form-group">
								<div class="d-flex justify-content-end">
									<input type="text" class="form-control" id="roadFullAddr"
										name="roadFullAddr" placeholder="주소를 입력해주세요." required
										readonly> <input type="button"
										class="btn btn-primary ml-2" onClick="goPopup();" value="검색" />
								</div>
							</div>
							<div class="form-group">
								<textarea rows="5" placeholder="소개" class="form-control"
									name="parIntro" id="parIntro"></textarea>
							</div>
						</div>
						<div class="card-footer" style="background-color: white"
							align="center">
							<button class="btn btn-primary" type="button"
								onclick='(function(){
									var f1 = document.forms[0];
									var pw1 = f1.parPassword.value;
									var pw2 = f1.parPasswordConfirm.value;
									if($("#phoneLabel").text() != ""){
										alert("전화번호를 확인해주세요.")
									}else{
										if (pw1 == pw2) {
											$("#parInsert").submit();
										} else {
											alert("비밀번호를 확인해주세요.")
										}
									}
                     		   })()'>회원가입</button>
							<button class="btn btn-primary" type="reset">취소</button>
						</div>
					</div>
					<!-- ./End Contact Form -->
			</div>
			</form>
			<!-- end row -->
		</div>
	</section>
	<!-- end container -->
	<!-- end section -->
	<jsp:include page="/WEB-INF/views/home/footer.jsp" />

	<script src="plugins/jquery/jquery.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ"></script>
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
		function goPopup() {
			// 호출된 페이지(jusoPopup.do)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
			var pop = window.open("jusoPopup.do", "pop",
					"width=570,height=420, scrollbars=yes, resizable=yes");
		}
		function jusoCallBack(roadFullAddr) {
			$('#roadFullAddr').val(roadFullAddr);
			parRegIdVal(roadFullAddr.substr(0,2));
		}
		$(document).ready(function() {
			let regExp = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}/;
			let phone = $('#parPhone');

			$(phone).on("change keyup paste", function(){
				if(!regExp.test($(phone).val())){
					$('#phoneLabel').text('전화번호 형식이 아닙니다.');
				}else{
					$('#phoneLabel').text('');
				}
			});
		});

		function checkPwd() {
			var f1 = document.forms[0];
			var pw1 = f1.parPassword.value;
			var pw2 = f1.parPasswordConfirm.value;
			if(pw1 != ''){
				if (pw1 != pw2) {
					document.getElementById('checkPwd').style.color = "red";
					document.getElementById('checkPwd').innerHTML = "암호가 일치하지 않습니다.";
				} else {
					document.getElementById('checkPwd').style.color = "black";
					document.getElementById('checkPwd').innerHTML = "암호가 확인 되었습니다.";
				}
			}
		}

		function parRegIdVal(regName){
			switch (regName){
				case '서울': $('#parRegId').val(1); break;
				case '인천': $('#parRegId').val(2); break;
				case '대전': $('#parRegId').val(3); break;
				case '대구': $('#parRegId').val(4); break;
				case '울산': $('#parRegId').val(5); break;
				case '부산': $('#parRegId').val(6); break;
				case '광주': $('#parRegId').val(7); break;
				case '경기': $('#parRegId').val(8); break;
				case '강원': $('#parRegId').val(9); break;
				case '충청': $('#parRegId').val(10); break;
				case '경상': $('#parRegId').val(11); break;
				case '전라': $('#parRegId').val(12); break;
				case '제주': $('#parRegId').val(13); break;
			}
		}
	</script>

</body>
</html>