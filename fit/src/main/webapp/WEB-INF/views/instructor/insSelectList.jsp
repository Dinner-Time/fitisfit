<!-- 파트너-강사목록페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
</style>

<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Bingo One page parallax responsive HTML Template ">
<meta name="author" content="Themefisher.com">

<title>강사관리 | Fit is Fit</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
<link rel="stylesheet" href="plugins/animate/animate.css">
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="css/style.css">

<script>
	function getRecord(n) {
		frm.insId.value = n;
		frm.submit();
	}
</script>

</head>

<body id="body">
	<jsp:include page="/WEB-INF/views/home/header.jsp" />
	<div id="preloader">
		<div class='preloader'>
			<span></span> <span></span> <span></span> <span></span> <span></span>
			<span></span>
		</div>
	</div>
	<br><br>
	<!-- section title -->
	<div class="title text-center">
		<h3>강사 관리</h3>
		<div class="border"></div>
	</div>
	<!-- /section title -->
	
	<section style="margin-bottom: 100px;">
		<div class="container">
			<table class="table table-hover">
				<thead align="center">
					<tr>
						<th>번호</th>
						<th>이름</th>
						<th>프로그램명</th>
						<th>연락처</th>
					</tr>
				</thead>
				<tbody align="center">
					<c:forEach var="ins" items="${list }">
						<tr onclick="getRecord('${ins.insId}')">
							<td>${ins.insId }</td>
							<td>${ins.insName}</td>
							<td>${ins.proName}</td>
							<td>${ins.insPhone}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div>
				<form id="frm" action="insSelect.do" method="post">
					<input type="hidden" id="insId" name="insId">
				</form>
			</div>
			<br>
			<div align="right">
				<a class="btn btn-primary" href="insInsertForm.do" >
					강사추가
				</a>

			</div>
		</div>
	</section>


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

</body>
</html>