<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Bingo One page parallax responsive HTML Template ">
<meta name="author" content="Themefisher.com">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>회원 관리 | Fit is Fit</title>

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
.custom-p {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 100px;
	height: 20px;
	color: black;
}

.custom-btn {
	background: #4343FE;
	border: 1px solid #4343FE;
	color: #fff;
	display: inline-block;
	font-size: 14px;
	letter-spacing: 1px;
	padding: 12px 40px;
	text-transform: uppercase;
	border-radius: 40px;
}
</style>

</head>
<body id="body">
	<jsp:include page="/WEB-INF/views/home/header.jsp" />
	<br>
	<br>
	<br>
	<br>

	<!-- 관리자 회원 관리 -->
	<div align="center">
		<div class="col-12">
			<!-- section title -->
			<div class="title text-center">
				<h3>회원 관리</h3>
				<div class="border"></div>
			</div>
			<!-- /section title -->
		</div>
		<div class="col-8">
			<table class="table" style="background-color: #F3F1F5;">
				<tbody>
					<tr style="cursor: pointer;">
						<td align="center">이름</td>
						<td><input type="text" id="memName" name="memName" class="form-control" style="width:250px;"></td>
					</tr>
					<tr style="cursor: pointer; border-bottom: 1px solid lightgray;">
						<td align="center">이메일</td>
						<td><input type="text" id="memEmail" name="memEmail" class="form-control" style="width:250px;"></td>
					</tr>
				</tbody>
			</table>
			<button class="searchBtn custom-btn" type="button">검색</button>
		</div>
	</div>
	<br>
	<br>
	<div align="center">
		<div class="col-8">
			<table id="memTable" class="table table-hover" style="background-color: #F3F1F5;">
				<thead>
					<tr align="center">
						<th scope="col">가입일</th>
						<th scope="col">이름</th>
						<th scope="col">이메일</th>
						<th scope="col">연락처</th>
					</tr>
				</thead>
				<tbody id="memData">
					<c:forEach var="member" items="${list}">
						<tr style="cursor: pointer;" data-name="${member.memName}" data-email="${member.memEmail}"
							onclick="getRecord('${member.memEmail}')">
							<td align="center">${member.memSubDate}</td>
							<td align="center">${member.memName}</td>
							<td align="center">${member.memEmail}</td>
							<td align="center">${member.memPhone}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<div>
		<form id="frm" action="adminMemSelect.do" method="post">
			<input type="hidden" id="memEmail" name="memEmail">
		</form>
	</div>

	<br>
	<br>
	<br>
	<br>
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

	<script>
	
		function getRecord(n) {
			frm.memEmail.value = n;
			frm.submit();
		}
	
		$('.searchBtn').click(function(){
			let memName = $('#memName').val();
			let memEmail = $('#memEmail').val();
			let memData = $('#memData').children();
			$('#memData').hide(300, function(){
				for(let i=0; i<memData.length; i++){
					$(memData).eq(i).hide();
					if($(memData).eq(i).attr("data-name").includes(memName) && $(memData).eq(i).attr("data-email").includes(memEmail)){
						$(memData).eq(i).show();
					}
				}
				$(this).show(300);
			});
		});
		
	</script>
</body>
</html>