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
	<link rel="stylesheet" href="plugins/themefisher-font/style.css">
	<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
	<link rel="stylesheet" href="plugins/animate/animate.css">
	<link rel="stylesheet" href="plugins/slick/slick.css">
	<link rel="stylesheet" href="css/style.css">

	<style type="text/css">

		.table-bordered td,
		.table-bordered th {
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
		<div class="row">
			<div class="col-12">
				<!-- section title -->
				<div class="title text-center">
					<h3>후기 관리</h3>
					<div class="border"></div>
				</div>
				<!-- /section title -->
			</div>
		</div>
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<table class="table table-bordered" style="border-width:0px; padding: 10px; text-align: center;">
					<tbody>
						<tr>
							<th class="col-2">별점</th>
							<td class="col-3">${review.revScore}</td>
							<td colspan="2" class="col-9">${review.revProName}</td>
						</tr>
						<tr>
							<th>작성일</th>
							<td>${review.revDate}</td>
							<th class="col-2">작성자</th>
							<td>${review.revWriter}</td>
						</tr>
						<tr>
							<td colspan="4" height="200" style="background-color: white;">${review.revContent}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="d-flex justify-content-end align-items-center col-10">
				<button type="button" class="btn btn-primary"
					onclick="location.href='revSelectListByAdm.do'">목록</button>
				&nbsp;&nbsp;
				<button type="button" class="btn btn-outline-primary" onclick="delConfirm()">삭제</button>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>

	<jsp:include page="/WEB-INF/views/home/footer.jsp" />

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

	<script type="text/javascript">
		function delConfirm() {
			confirm('정말로 삭제하시겠습니까?');
		}
	</script>
</body>

</html>