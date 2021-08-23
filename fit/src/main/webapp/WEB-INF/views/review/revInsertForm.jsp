<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Bingo One page parallax responsive HTML Template ">
<meta name="author" content="Themefisher.com">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Review Insert By Member</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="plugins/lightbox2/dist/css/lightbox.min.css">
<link rel="stylesheet" href="plugins/animate/animate.css">
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body id="body">
	<jsp:include page="../home/header.jsp" />
	<!-- 회원이 마이페이지 중 수강내역에서 후기작성을 클릭했을 때 나오는 페이지 
		 이전 페이지에서 request에 프로그램ID를 실어서 가져와야 함
	-->
	<div class="col-12" align="center">
		<div class="col-12">
			<!-- section title -->
			<div class="title text-center">
				<h3>후기 작성</h3>
				<div class="border"></div>
			</div>
			<!-- /section title -->
		</div>
		<div class="col-6">
			<form id="frm" name="frm" action="revInsert.do" method="post">
				<input type="hidden" name="revProId" value="${proId }">
				<table class="table table-bordered">
					<tr align="center">
						<td class="col-4">
							<div class="form-group">
							  <label for="revScore">(별점. 현재는 3.5로 고정시켜놈..)</label>
							  <select class="form-control" id="revScore" name="revScore">
							    <option value="0">0점</option>
							    <option value="1">1점</option>
							    <option value="2">2점</option>
							    <option value="3">3점</option>
							    <option value="4">4점</option>
							    <option value="5">5점</option>
							  </select>
							</div>
						</td>
						<td class="col-8">${history.proName}</td>
					</tr>
					<tr>
						<td colspan="2"><textarea id="revContent" name="revContent" class="form-control h-25" aria-label="With textarea" rows="5"></textarea></td>
					</tr>
				</table>
				<br>
				<div>
					<button type="reset" class="btn btn-outline-primary">취소</button>&nbsp;&nbsp;
					<button type="submit" class="btn btn-primary">등록</button>
				</div>
			</form>
		</div>
	</div>
	<br><br>
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