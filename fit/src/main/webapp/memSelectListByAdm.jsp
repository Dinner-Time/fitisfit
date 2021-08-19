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

<title>Member Select List By Admin</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="plugins/lightbox2/dist/css/lightbox.min.css">
<link rel="stylesheet" href="plugins/animate/animate.css">
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="css/style.css">

<script>
	function getRecord(n) {
		frm.revId.value = n;
		frm.submit();
	}
</script>

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
			<table class="table">
				<tbody>
					<tr style="cursor: pointer;">
						<td align="center">가입일</td>
						<td><input type="date" id="memSubDate" name="memSubDate">
							~ <input type="date" id="memSubDate" name="memSubDate"></td>
					</tr>
					<tr style="cursor: pointer;">
						<td align="center">이름</td>
						<td><input type="text" id="memName" name="memName"></td>
					</tr>
					<tr style="cursor: pointer; border-bottom: 1px solid lightgray;">
						<td align="center">이메일</td>
						<td><input type="text" id="memEmail" name="memEmail"></td>
					</tr>
				</tbody>
			</table>
			<button class="custom-btn" type="submit">검색</button>
		</div>
	</div>
	<br>
	<br>
	<div align="center">
		<div class="col-8">
			<table class="table table-hover">
				<thead>
					<tr align="center">
						<th scope="col">가입일</th>
						<th scope="col">이름</th>
						<th scope="col">이메일</th>
						<th scope="col">연락처</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="member" items="${list}">
						<tr style="cursor: pointer;"
							onclick="getRecord('${member.memEmail}')">
							<td align="center">${member.memSubDate}</td>
							<td align="center">${member.memName}</td>
							<td align="center">${member.memEmail}</td>
							<td align="center">${member.memPhone}</td>
						</tr>
					</c:forEach>
					<!-- 샘플 -->
						<tr style="cursor: pointer;"
							onclick="getRecord('aaa@aaa')">
							<td align="center">2021-08-16</td>
							<td align="center">이나은</td>
							<td align="center">aaa@aaa</td>
							<td align="center">010-0000-0000</td>
						</tr>
				</tbody>
			</table>
		</div>
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

</body>
</html>