<!-- 파트너-강사추가페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Bingo One page parallax responsive HTML Template ">
<meta name="author" content="Themefisher.com">

<title>강사추가 | Fit is Fit</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
<link rel="stylesheet" href="plugins/animate/animate.css">
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="css/style.css">

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
		<h3>강사 추가</h3>
		<div class="border"></div>
	</div>
	<!-- /section title -->

	<section style="margin-bottom: 100px">
		<div class="container">
				<form id="frm" name="frm" action="insInsert.do" method="post" enctype="multipart/form-data">
			<div class="row">
				<div class="col-md-4">
					<div class="card" style="width: 300px">
						<img class="card-img-top" src="images/instructor/generalProfile.jpg" alt="Card image" style="width: 100%">
						<div class="card-body">
							<input type="file" id="insPhoto" name="insPhoto"><br>
						</div>
					</div>
					<br>
				</div>
				<div class="col-md-8">
						<!-- Contact Form -->
						<div class="contact-form">
							<div class="form-group">
								<input type="text" placeholder="이름" class="form-control"
									name="insName" id="insName" required="required">
							</div>
							<div class="form-group">
								<input type="text" placeholder="전화번호" class="form-control"
									name="insPhone" id="insPhone" required="required">
							</div>
							<div class="form-group">
								<div class="form-group">
									&nbsp;&nbsp;
									<input type='radio' id='insGender' name='insGender' value='남' checked />남
									&nbsp;
									<input type='radio' id='insGender' name='insGender' value='여' />여
								</div>
							</div>

							<div class="form-group">
								<input type="text" placeholder="인스타그램" class="form-control"
									name="insInsta" id="insInsta">
							</div>

							<div class="form-group">
								<input type="text" placeholder="카카오톡" class="form-control"
									name="insKakao" id="insKakao">
							</div>

							<div class="form-group">
								<textarea rows="6" placeholder="이력" class="form-control"
									name="insHistory" id="insHistory" required="required"></textarea>
							</div>

							<div>
								<input type="hidden" name="insParId" id="insParId" value="${partner.parId}">
							</div>

						</div>
						<!-- ./End Contact Form -->
						<div align="right">
							<button type="button" class="btn btn-outline-primary" onclick="location.href='insSelectList.do'">돌아가기</button>
							<button type="submit" class="btn btn-primary">등록</button>
						</div>
				</div>
			</div>
					</form>
			<!-- End row -->
		</div>
		<!-- End container -->
	</section>
	<!-- End section -->


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