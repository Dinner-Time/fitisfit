<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

	<style type="text/css">
		.custom-nav {
			border: 1px solid #4343FE;
			border-radius: 20px;
			position: relative;
			left: 50%;
			top: 27%;
			transform: translate(-50%, -50%);
		}

		li {
			font-family: 'Gowun Dodum', sans-serif;
			font-size: 15px;
			margin-left: 10px;
			margin-right: 10px;
		}

		.custom-p {
			overflow: hidden;
			text-overflow: ellipsis;
			white-space: nowrap;
			width: 300px;
			height: 20px;
			color: black;
		}
	</style>

</head>

<body id="body">
	<jsp:include page="/WEB-INF/views/home/header.jsp" />
	<br><br><br><br>

	<!-- 관리자 측에서 후기를 상세보기 할 수 있는 페이지 -->
	<div class="container" style="min-height: 80vh;">
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
				<nav class="navbar navbar-expand-lg navbar-light custom-nav" style="z-index: 999;">
					<div class="collapse navbar-collapse" id="navigation">
						<ul class="navbar-nav ml-auto text-center">
							<li class="nav-item dropdown active">
								<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
									data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">프로그램</a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li class="dropdown-item" style="cursor: pointer;" onclick="menuSelect('프로그램')">프로그램
									</li>
									<li class="dropdown-item" style="cursor: pointer;" onclick="menuSelect('내용')">내용
									</li>
									<li class="dropdown-item" style="cursor: pointer;" onclick="menuSelect('작성자')">작성자
									</li>
								</ul>
							</li>
							<li>
								<input id="keyword" type="text" class="form-control" placeholder="키워드 입력">
							</li>
							<li>
								<button type="button" class="btn btn-outline-primary"
									onclick="searchByKeyword()">검색</button>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
		<div class="row">
			<table class="table table-hover">
				<thead>
					<tr align="center">
						<th scope="col" class="col-2">번호</th>
						<th scope="col" class="col-3">프로그램</th>
						<th scope="col" class="col-3">내용</th>
						<th scope="col" class="col-2">작성일</th>
						<th scope="col" class="col-2">작성자</th>
					</tr>
				</thead>
				<tbody id="revData">
					<c:forEach var="review" items="${list}">
						<tr style="cursor: pointer;" onclick="getRecord('${review.revId}')">
							<td align="center">${review.revId}</td>
							<td align="center">
								<p class="custom-p">${review.revProName}</p>
							</td>
							<td>
								<p class="custom-p">${review.revContent}</p>
							</td>
							<td align="center">${review.revDate}</td>
							<td align="center">${review.revWriter}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<a href="revInsertForm.do">후기 입력 (임시)</a><br>
			<a href="revSelectListByPar.do">파트너 관리창의 후기 조회 (임시)</a>
		</div>
		<div class="row d-flex justify-content-center"></div>
	</div>
	<div>
		<form id="frm" action="revSelectByAdm.do" method="post">
			<input type="hidden" id="revId" name="revId">
		</form>
	</div>

	<br><br><br><br>
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
	<script>
		let navbar = $('#navbarDropdown');
		let dataList = $('#revData').children();

		$(dataList).hide(function () {
			for (let j = 0; j < 10; j++) {
				$(dataList).eq(j).show();
			}
		});

		function menuSelect(text) {
			$(navbar).text(text);
		}

		function getRecord(n) {
			frm.revId.value = n;
			frm.submit();
		}

		function searchByKeyword() {
			$(dataList).hide(function () {
				if ($(navbar).text() == '프로그램') {
					for (let i = 0; i < dataList.length; i++) {
						let program = $(dataList).eq(i).children().eq(1).text();
						if ($('#keyword').val() != null) {
							if (program.includes($('#keyword').val())) {
								$(dataList).eq(i).show();
							}
						}
					}
				} else if ($(navbar).text() == '내용') {
					for (let i = 0; i < dataList.length; i++) {
						let program = $(dataList).eq(i).children().eq(2).text();
						if ($('#keyword').val() != null) {
							if (program.includes($('#keyword').val())) {
								$(dataList).eq(i).show();
							}
						}
					}
				} else if ($(navbar).text() == '작성자') {
					for (let i = 0; i < dataList.length; i++) {
						let program = $(dataList).eq(i).children().eq(4).text();
						if ($('#keyword').val() != null) {
							if (program.includes($('#keyword').val())) {
								$(dataList).eq(i).show();
							}
						}
					}
				} else {

				}
			});
		}

		let seqBtn;
		for (let i = 0; i < $(dataList).length / 10; i++) {
			if(i==0){
				seqBtn = $('<button class="seqBtn btn btn-primary m-1">' + (i + 1) + '</button>');
			} else{
				seqBtn = $('<button class="seqBtn btn btn-outline-primary m-1">' + (i + 1) + '</button>');
			}
			$(seqBtn).click(seqBtnToggle);
			$('.row:last').append(seqBtn);
		}

		function seqBtnToggle() {
			let btns = $('.seqBtn');
			for (let i = 0; i < btns.length; i++) {
				btns.eq(i).removeClass('btn-primary');
				btns.eq(i).addClass('btn-outline-primary');
			}
			$(this).removeClass('btn-outline-primary');
			$(this).addClass('btn-primary');
			let idx = parseInt($(this).text()) - 1;
			$(dataList).hide(function () {
				for (let j = 0; j < 10; j++) {
					$(dataList).eq((idx * 10) + j).show();
				}
			});
		}
	</script>
</body>

</html>