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
<link rel="stylesheet"
	href="plugins/lightbox2/dist/css/lightbox.min.css">
<!-- animation css -->
<link rel="stylesheet" href="plugins/animate/animate.css">
<!-- Slick Carousel -->
<link rel="stylesheet" href="plugins/slick/slick.css">
<!-- Main Stylesheet -->
<link rel="stylesheet" href="css/style.css">
</head>

<body id="body">
	<jsp:include page="../home/header.jsp" />
	<!-- 페이지 로딩 효과 -->
	<div id="preloader">
		<div class='preloader'>
			<span></span> <span></span> <span></span> <span></span> <span></span>
			<span></span>
		</div>
	</div>
	<!-- 페이지 로딩 효과 -->

	<section class="d-flex justify-content-center align-items-center" style="min-height: 100vh;">
		<div class="container card-group">
			<div class="card">
				<form action="login.do" method="post">
					<div class="card-header bg-primary text-white">
						<h1 class="mt-2 font-weight-normal">로그인</h1>
					</div>
					<div class="card-body">
						<div class="form-group">
							<label for="email">이메일</label> <input type="email"
								class="form-control" id="email" name="email" required>
						</div>
						<div class="form-group">
							<label for="password">비밀번호</label> <input type="password"
								class="form-control" id="password" name="password" required>
						</div>
						<div class="form-group form-check">
							<span class="m-3"> <input class="form-check-input"
								type="radio" name="memberSort" id="general" value="general"
								checked> <label class="form-check-label" for="general">일반회원</label>
							</span> <span class="m-3"> <input class="form-check-input"
								type="radio" name="memberSort" id="partner" value="partner">
								<label class="form-check-label" for="partner">파트너회원</label>
							</span>
						</div>
					</div>
					<div class="card-footer">
						<button class="btn btn-primary" type="submit">로그인</button>
						<button class="btn btn-primary" type="reset">취소</button>
					</div>
				</form>
			</div>
			<div class="card">
				<form id="signUp" action="memInsert.do" method="post">
					<div class="card-header bg-primary text-white">
						<h1 class="mt-2 font-weight-normal">회원 가입</h1>
					</div>
					<div class="card-body">
						<div class="form-group">
							<label for="email">이메일</label> <input type="email"
								class="form-control" id="email" name="email" required>
						</div>
						<div class="form-group">
							<label for="password">비밀번호</label> <input type="password"
								class="form-control" id="password" name="password" required>
						</div>
						<div class="form-group">
							<label for="name">이름</label> <input type="text"
								class="form-control" id="name" name="name" required>
						</div>
						<div class="form-group form-check">
							<span class="m-3"> <input class="form-check-input"
								type="radio" name="gender" id="male" value="남" checked>
								<label class="form-check-label" for="male">남</label>
							</span> <span class="m-3"> <input class="form-check-input"
								type="radio" name="gender" id="female" value="여"> <label
								class="form-check-label" for="female">여</label>
							</span>
						</div>
						<div class="form-group">
							<label for="birth">생년월일</label> <input type="date"
								class="form-control" id="birth" name="birth" value="2000-01-01"
								required>
						</div>
						<div class="form-group">
							<label for="phone">전화번호</label> <input type="text"
								class="form-control" id="phone" name="phone" required>
						</div>
						<div class="form-group">
							<label for="address">주소</label>
							<div class="d-flex justify-content-end">
								<input type="text" class="form-control" id="roadFullAddr" name="roadFullAddr" required readonly> 
								<input type="button" class="btn btn-primary ml-2" onClick="goPopup();" value="검색" />
							</div>
						</div>
					</div>
					<div class="card-footer">
						<button class="btn btn-primary" type="button" onclick='(function(){
                        	alert("환영합니다!!");
                        	$("#signUp").submit();
                        })()'>회원가입</button>
						<button class="btn btn-primary" type="reset">취소</button>
					</div>
				</form>
			</div>
		</div>
	</section>
	<jsp:include page="../home/footer.jsp" />

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

	<script type='text/javascript'>
		function goPopup() {
			// 호출된 페이지(jusoPopup.do)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
			var pop = window.open("jusoPopup.do", "pop",
					"width=570,height=420, scrollbars=yes, resizable=yes");
		}
		function jusoCallBack(roadFullAddr) {
			$('#roadFullAddr').val(roadFullAddr);
		}
	</script>
</body>

</html>