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
	<div class="row">
		<div class="col-6" align="center">
			<div class="card" style="width: 18rem;">
				<img class="card-img-top" src="images/blog/post-3.jpg" alt="Card image cap" style="border-radius: 120%;">
				<div class="card-body">
					<p class="card-text">이나은</p>
				</div>
			</div>
		</div>
		<div class="col-6">
			<table class="table table-hover">
				<!-- 샘플 -->
				<tr style="cursor: pointer;">
					<td>2021-08-16</td>
				</tr>
				<tr style="cursor: pointer;">
					<td>이나은</td>
				</tr>
				<tr style="cursor: pointer;">
					<td>aaa@aaa</td>
				</tr>
				<tr style="cursor: pointer;">
					<td>010-0000-0000</td>
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