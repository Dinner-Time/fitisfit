<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport"
		content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<title>피트다 피트!!</title>
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
table,h3,.btn-outline-primary,.btn-primary {
	font-family: 'Gowun Dodum', sans-serif;
}

td {
	text-align: center;
}

tr:first-child {
	background:#6495ED;
	color:white;
	font-weight:bold;
}
.table-bordered td, .table-bordered th {
    border: 1px solid #dee2e6;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/home/header.jsp" />
	
	<br>
	<br>
	<!-- 관리자가 후기 목록에서 하나를 클릭했을 때, 상세보기를 해주는 페이지
	프로그램ID를 기준으로 review와 program을 join하여 프로그램명도 출력해줌 -->
	<div class="container" style="min-height: 100vh;">
		<div class="col-12">
			<!-- section title -->
			<div class="title text-center">
				<h3>후기 관리</h3>
				<div class="border"></div>
			</div>
			<!-- /section title -->
		</div>
		<div class="col-8">
			<table class="table table-bordered" style="border-width:0px;">
				<tbody>
					<tr>
						<td>${review.revScore}</td>
						<td width="500">${review.revProName}</td>
						<td width="300">${review.revDate}</td>
						<td>${review.revWriter}</td>
					</tr>
					<tr>
						<td colspan="4" height="200">${review.revContent}</td>
					</tr>
				</tbody>
			</table>
		</div>
		<br>
		<div>
			<button type="button" class="btn btn-primary" onclick="location.href='revSelectListByAdm.do'">목록</button>
			&nbsp;&nbsp;
			<button type="button" class="btn btn-outline-primary"
				onclick="delConfirm()">삭제</button>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
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
		function delConfirm() {
			confirm('정말로 삭제하시겠습니까?');
			// 확인 누르면 삭제되고 '삭제가 완료되었습니다' 뜨도록!
		}
	</script>
</body>
</html>