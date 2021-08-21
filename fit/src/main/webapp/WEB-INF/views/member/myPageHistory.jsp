<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- 마이페이지 수강내역 페이지 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Bingo One page parallax responsive HTML Template ">

<meta name="author" content="Themefisher.com">

<title>수강내역 | Fit is Fit</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
<link rel="stylesheet" href="plugins/animate/animate.css">
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="css/style.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<style type="text/css">

.stateBanner {
	text-align: center;
	font-size: 18px;
	border-radius: 0px;
	position: relative;
	width: 100%;
	top: 170px;       
}

</style>

</head>

<body id="body">

	<jsp:include page="/WEB-INF/views/home/header.jsp" />
	<br><br><br>
	<!-- section title -->
	<div class="title text-center">
		<h3>수강 내역</h3>
		<div class="border"></div>
	</div>
	<!-- /section title -->
	<div class="container">
		<div class="row">
			<div class="col-md-3 col-sm-6 col-xs-12">
				<c:forEach var="history" items="${list}">
					<div class="post-item">
						<div class="stateBanner badge-primary">
							${history.hisState}				
						</div>
						<div class="media-wrapper">
							<img src="images/program/${history.proPhoto}" alt="Program Photo" class="img-fluid">
						</div>
						<div class="content" data-hisDate="${history.hisDate }" data-hisPeriod="${history.hisPeriod }">
							<h5>${history.proName}</h5>
							<p>${history.hisDate} ~</p>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<br><br><br>
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
	
	<script type="text/javascript">
		let date = new Date($('.content').eq(1).attr('data-hisDate'));
		let period = $('.content').attr('data-hisPeriod')*1;
		console.log(date);
		date.setMonth(date.getMonth()+1+period);
		console.log(date);
	</script>
</body>
</html>