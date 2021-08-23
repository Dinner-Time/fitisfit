<!-- 파트너 - 프로그램 목록 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<title>프로그램 관리 | Fit is Fit</title>

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
		frm.proId.value = n;
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

	<section class="about" id="about">
	
		<div class="row">
			<div class="col-12">
				<div class="title text-center ">
					<h2>프로그램 관리</h2>
					<div class="border"></div>
				</div>
			</div>
		</div>
		
		<div class="container">
			<table class="table table-hover">
				<thead align="center">
					<tr>
						<th>번호</th>
						<th>프로그램명</th>
					</tr>
				</thead>
				<tbody align="center">
					<c:forEach var="pro" items="${list}">
						<tr onclick="getRecord('${pro.proId}')">
							<td>${pro.proId }</td>
							<td>${pro.proName}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div>
				<form id="frm" action="proDetail.do" method="post">
					<input type="hidden" id="proId" name="proId">
				</form>
			</div>
			<div align="right">
				<button type="button" class="btn btn-primary" onclick="location.href='programAddForm.do'">
					프로그램 추가
				</button>
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