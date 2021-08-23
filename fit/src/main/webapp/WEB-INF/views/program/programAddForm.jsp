<!-- 파트너 - 프로그램 추가 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="description" content="Bingo One page parallax responsive HTML Template ">

	<meta name="author" content="Themefisher.com">

	<title>프로그램 추가 | Fit is Fit</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
	<link rel="stylesheet" href="plugins/themefisher-font/style.css">
	<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
	<link rel="stylesheet" href="plugins/animate/animate.css">
	<link rel="stylesheet" href="plugins/slick/slick.css">
	<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<jsp:include page="/WEB-INF/views/home/header.jsp" />
	<!-- 페이지 로딩 효과 -->
	<div id="preloader">
		<div class='preloader'>
			<span></span> <span></span> <span></span> <span></span> <span></span>
			<span></span>
		</div>
	</div>
	<!-- 페이지 로딩 효과 -->
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="title text-center ">
					<h2>프로그램 추가</h2>
					<div class="border"></div>
				</div>
			</div>
		</div>

		<form id="frm" name="frm" action="programAdd.do" method="post" enctype="multipart/form-data">
			<div class="row">
				<div class="col-md-4" align="center">
					<div class="card" style="width: 300px">
						<img class="card-img-top img-thumbnail" src="images/program/generalProgram.jpg"
							alt="program image" style="width: 100%">
						<div class="card-body" align="right">
							<input type="file" id="proPhoto" name="proPhoto">
						</div>
					</div><br>
				</div>
				<div class="col-md-8">
					<table class="table">
						<tr>
							<th width=240px; height=70px;>프로그램명</th>
							<td><input type="text" id="proName" name="proName" class="form-control"
									placeholder="프로그램명을 입력해주세요" required="required"></td>
						</tr>
						<tr>
							<th width=240px; height=70px;>카테고리</th>
							<td>
								<select id="proCatId" name="proCatId" class="form-control">
									<option selected>카테고리를 선택해주세요.</option>
									<option value="1">헬스</option>
									<option value="2">요가</option>
									<option value="3">필라테스</option>
									<option value="4">수영</option>
									<option value="5">플라잉요가</option>
									<option value="6">복싱</option>
									<option value="7">골프</option>
									<option value="8">테니스</option>
									<option value="9">클라이밍</option>
									<option value="10">발레</option>
								</select>
							</td>
						</tr>
						<tr>
							<th width=240px; height=70px;>시작 날짜</th>
							<td><input type="date" id="proSince" name="proSince" class="form-control"
									required="required"></td>
						</tr>
						<tr>
							<th width=240px; height=70px;>기간 (월)<br>
								<p class="text-muted">(상설프로그램은 0으로 합니다.)</p>
							</th>
							<td><input type="number" id="proPeriod" name="proPeriod" class="form-control" value="0"
									required="required"></td>
						</tr>
						<tr>
							<th width=240px; height=70px;>1달권 가격 (원)</th>
							<td><input type="number" id="proPrice" name="proPrice" class="form-control"
									required="required"></td>
						</tr>
						<tr>
							<th width=240px; height=70px;>2달권 할인율 (%)</th>
							<td><input type="number" id="proSale2" name="proSale2" class="form-control"
									required="required"></td>
						</tr>
						<tr>
							<th width=240px; height=70px;>3달 이상 할인율 (%)</th>
							<td><input type="number" id="proSale3" name="proSale3" class="form-control"
									required="required"></td>
						</tr>
						<tr>
							<th width=240px; height=70px;>최대 인원 (명)</th>
							<td><input type="number" id="proMaxPeople" name="proMaxPeople" class="form-control"
									required="required"></td>
						</tr>
						<tr>
							<th width=240px; height=70px;>강사</th>
							<td>
								<select id="proInsId" name="proInsId" class="form-control">
									<option selected>강사를 선택해주세요.</option>
									<c:forEach var="ins" items="${insList}">
										<option value="${ins.insId}">${ins.insName}</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<th width=240px; height=70px;>프로그램 소개</th>
							<td><textarea rows="5" placeholder="프로그램에 대한 간략한 설명을 입력해주세요." class="form-control"
									name="proDesc" id="proDesc"></textarea></td>
						</tr>
					</table>

					<div class="card-body" align="right">
						<button type="submit" class="btn btn-primary">추가 승인 요청</button>
					</div>
				</div>
			</div>
		</form>
	</div>

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
</body>

</html>