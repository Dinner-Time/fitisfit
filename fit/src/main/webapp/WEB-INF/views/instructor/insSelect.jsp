<!-- 파트너-강사수정페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Bingo One page parallax responsive HTML Template ">

<meta name="author" content="Themefisher.com">

<title>강사정보 | Fit is Fit</title>

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
		<h3>강사 정보</h3>
		<div class="border"></div>
	</div>
	<!-- /section title -->
	<section style="margin-bottom: 100px">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="card" style="width: 300px">
						<img class="card-img-top" src="images/instructor/${ins.insPhoto}"
							alt="Card image" style="width: 100%">
						<div class="card-body" align="right">
						<c:if test="${session.author == 'P' }">
							<form id="photoFrm" name="photoFrm" action="insUpdatePhoto.do" method="post" enctype="multipart/form-data">
								<input type="hidden" id="insId" name="insId" value="${ins.insId}">
								<input type="file" id="insPhoto" name="insPhoto"><br>
								<button type="submit" class="btn btn-primary" style="float: right">등록</button>
							</form>
							</c:if>
						</div>
					</div>
					<br>
				</div>
				<div class="col-md-8">
					<form id="updateForm" name="updateForm" action="insUpdate.do"
						method="POST">
						<input type="hidden" id="insId" name="insId" value="${ins.insId}">
						<table class="table">
							<tr>
								<th>이름</th>
								<td>${ins.insName}</td>
							</tr>
							<tr>
								<th>연락처</th>
								<td><input id="insPhone" name="insPhone"
									class="form-control" type="text" style="width: 70% !important;"
									value="${ins.insPhone }" readonly></td>
							</tr>
							<tr>
								<th>성별</th>
								<td>${ins.insGender}</td>
							</tr>
							<tr>
								<th>인스타</th>
								<td><input id="insInsta" name="insInsta"
									class="form-control" type="text" style="width: 70% !important;"
									value="${ins.insInsta }" readonly></td>
							</tr>
							<tr>
								<th>카카오</th>
								<td><input id="insKakao" name="insKakao"
									class="form-control" type="text" style="width: 70% !important;"
									value="${ins.insKakao }" readonly></td>
							</tr>
							<tr>
								<th>이력</th>
								<td><input id="insHistory" name="insHistory"
									class="form-control" type="text" style="width: 70% !important;"
									value="${ins.insHistory}" readonly></td>
							</tr>
						</table>
						<c:if test="${session.author == 'P' }">
						<div align="right">
							<!-- <button type="button" class="btn btn-outline-primary" onclick="location.href='insSelectList.do'">돌아가기</button> -->
							<button id="updateBtn" type="button" class="btn btn-primary">수정</button>
							<a href="#" id="insDelete" class="btn btn-danger">삭제</a>
						</div>
						</c:if>
					</form>
				</div>
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</section>
	<!-- End section -->

	<form id="deleteForm" name="deleteForm" action="" method="POST">
		<input type="hidden" id="Id" name="Id" value="${ins.insId}">
	</form>

	<jsp:include page="/WEB-INF/views/home/footer.jsp" />

	<!-- 
    Essential Scripts
    =====================================-->
	<!-- Main jQuery -->
	<script src="plugins/jquery/jquery.min.js"></script>
	<!-- Google Map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ"></script>
	<script src="plugins/google-map/gmap.js"></script>

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

	<script type="text/javascript">
		$(insDelete).click(function() {
			let form = $('#deleteForm');
			let insDelete = $('#insDelete');
			if (confirm("해당 강사를 삭제하시겠습니까?") == true) {
				alert("삭제 완");
				$(form).attr('action', 'insDelete.do');
				$(form).submit();
			} else {
				return;
			}

		});

		let form = $('#updateForm');
		let input = $('#insPhone');
		let inputBefore = $(input).val();

		$('#updateBtn').click(function() {
			if ($(this).text() == '수정') {
				$('#insPhone').prop('readonly', false);
				$('#insInsta').prop('readonly', false);
				$('#insKakao').prop('readonly', false);
				$('#insHistory').prop('readonly', false);
				$(this).text('완료')
			} else if ($(this).text() == '완료') {
				let rtnNum;
				let regExp = /01[01689]-[0-9]{1}[0-9]{2,3}-[0-9]{4}$/;
				let myArray;
				if (regExp.test($(input).val())) {
					if (confirm('정말로 수정하시겠습니까?')) {
						alert('수정되었습니다.')
						$(form).submit();
					}
				} else {
					alert('전화번호 형식이 아닙니다\n다시 한 번 확인해주세요.');
					$(input).val(inputBefore);
				}

				$('#insPhone').prop('readonly', true);
				$('#insInsta').prop('readonly', true);
				$('#insKakao').prop('readonly', true);
				$('#insHistory').prop('readonly', true);
				$(this).text('수정')
			}
		})
	</script>

</body>
</html>