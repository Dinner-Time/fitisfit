<!-- 파트너-강사수정페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="description" content="Bingo One page parallax responsive HTML Template ">

	<meta name="author" content="Themefisher.com">

	<title>Partner My Page | Fit is Fit</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
	<link rel="stylesheet" href="plugins/themefisher-font/style.css">
	<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
	<link rel="stylesheet" href="plugins/animate/animate.css">
	<link rel="stylesheet" href="plugins/slick/slick.css">
	<link rel="stylesheet" href="css/style.css">
	<style type="text/css">
		.rounded-circle {
			border-radius: 50% !important;
		}
	</style>
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
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="title text-center ">
						<h2>업체 정보</h2>
						<div class="border"></div>
					</div>
				</div>
				<div class="col-md-4" align="center">
					<div class="card" style="width: 300px">
						<img class="card-img-top img-thumbnail" src="images/partner/${partner.parPhoto }"
							alt="partner image" style="width: 100%">
						<div class="card-body" align="right">
							<form id="photoFrm" name="photoFrm" action="parUpdatePhoto.do" method="post"
								enctype="multipart/form-data">
								<input type="file" id="parPhoto" name="parPhoto">
								<button type="submit" class="btn btn-primary">등록</button>
							</form>
						</div>
					</div>
					<br>
				</div>
				<div class="col-md-8">
					<form id="modRequest" action="parModRequest.do" method="post">
						<input type="hidden" id="parRegId" name="parRegId" value="${partner.parRegId}">
						<table class="table">
							<tr>
								<th width=240px; height=70px;>이름</th>
								<td><input type="text" class="form-control" name="parName" value="${partner.parName }"
										readonly required></td>
							</tr>
							<tr>
								<th height=70px;>이메일</th>
								<td><input type="text" class="form-control" value="${partner.parEmail }"
										disabled required></td>
							</tr>
							<tr>
								<th height=70px;>지역</th>
								<td><input type="text" class="form-control" id="regName" value="${partner.regName }"
										disabled required></td>
							</tr>
							<tr>
								<th height=70px;>주소</th>
								<td class="d-flex justify-content-end">
									<input type="text" class="form-control" id="roadFullAddr" name="roadFullAddr"
										value="${partner.parAddress }" required readonly>
									<input id="jusoBtn" type="button" class="btn btn-primary ml-2" onClick="goPopup();" value="검색" />
								</td>
							</tr>
							<tr>
								<th height=70px;>전화번호</th>
								<td><input type="text" class="form-control" name="parPhone" value="${partner.parPhone }"
										readonly required></td>
							</tr>
							<tr>
								<th height=70px;>소개</th>
								<td><input type="text" class="form-control" name="parIntro" value="${partner.parIntro }"
										readonly required></td>
							</tr>
						</table>
					</form>
					<div class="card-body" align="right">
						<button id="modBtn" class="btn btn-primary">수정</button>
					</div>
				</div>
			</div>
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

	<script type="text/javascript">
		regIdVal();
		
		function goPopup() {
			// 호출된 페이지(jusoPopup.do)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
			var pop = window.open("jusoPopup.do", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");
		}

		function jusoCallBack(roadFullAddr) {
			$('#roadFullAddr').val(roadFullAddr);
			$('#regName').val(roadFullAddr.substr(0,2));
			regIdVal();
		}

		let modBtn = $('#modBtn');
		let jusoBtn = $('#jusoBtn');
		let inputs = $('table').find('input');

		$(jusoBtn).hide();

		$(modBtn).click(function () {
			if ($(modBtn).text() == '수정') {
				$(inputs).prop('readonly', false);
				$(jusoBtn).show();
				$(modBtn).text('승인 요청');
			} else {
				if (confirm('관리자에게 정보 수정을 요청하시겠습니까?')) {
					$('#modRequest').submit();
				} else {
					window.location.reload();
				}
			}
		});

		function regIdVal(){
			switch ($('#regName').val()){
				case '서울': $('#parRegId').val(1); break;
				case '인천': $('#parRegId').val(2); break;
				case '대전': $('#parRegId').val(3); break;
				case '대구': $('#parRegId').val(4); break;
				case '울산': $('#parRegId').val(5); break;
				case '부산': $('#parRegId').val(6); break;
				case '광주': $('#parRegId').val(7); break;
				case '경기': $('#parRegId').val(8); break;
				case '강원': $('#parRegId').val(9); break;
				case '충청': $('#parRegId').val(10); break;
				case '경상': $('#parRegId').val(11); break;
				case '전라': $('#parRegId').val(12); break;
				case '제주': $('#parRegId').val(13); break;
			}
		}

		if("<c:out value='${reqSuccess}'/>" == "success"){
			alert('승인 요청이 완료되었습니다!');
		}
		if("<c:out value='${reqFail}' />" == 'fail'){
			alert('수정 요청이 실패하였습니다.')
		}

		
	</script>

</body>

</html>