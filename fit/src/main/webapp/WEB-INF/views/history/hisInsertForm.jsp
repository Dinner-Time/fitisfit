<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Bingo One page parallax responsive HTML Template ">
<meta name="author" content="Themefisher.com">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>결제 확인창</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="plugins/lightbox2/dist/css/lightbox.min.css">
<link rel="stylesheet" href="plugins/animate/animate.css">
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="css/style.css">

<!-- 폰트 시작 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<!-- 폰트 끝 -->

<style type="text/css">

h3, h4 {
	font-family: 'Gowun Dodum', sans-serif;
}
p {
	font-family: 'Gowun Dodum', sans-serif;
	color: black;
	font-size: 18px;
}

</style>

</head>

<body>
	<jsp:include page="../home/header.jsp" />
	<!-- 결제창 : 회원이 프로그램 최종 확인을 하고 결제 버튼을 누르면 수강내역에 insert가 되는 페이지 -->
	<div class="col-12" align="center">
		<!-- section title -->
		<div class="title text-center">
			<h3>등록 및 결제</h3>
			<div class="border"></div>
		</div>
		<!-- /section title -->
		<div class="col-8">
			<form id="frm" name="frm" action="hisInsert.do" method="post">
				<div class="row">
					<div class="col-6">
						<div class="card bg-light text-dark">
							<div class="card-header">
								<h4 align="center">신청자 정보</h4>
							</div>
							<!-- 세션에서 받아오는 부분 -->
							<div class="card-body" align="left">
								<p>신청자 이름</p> <br> 
								<p>전화번호</p> <br> 
								<p>이메일 주소</p>
								<input type="text" class="form-control" id="hisMemEmail" name="hisMemEmail">
							</div>
						</div>
					</div>
					<div class="col-6">
						<div class="card bg-light text-dark">
							<div class="card-header">
								<h4 align="center">결제 정보</h4>
							</div>
							<div class="card-body" align="left">
								<p>프로그램 ID (세션에서 받아오기)</p> 
								<input type="number" class="form-control" id="hisProId" name="hisProId"><br>
								<p>기간 (일)</p> 
								<input type="number" class="form-control" value="30" id="hisPeriod" name="hisPeriod"><br>
								<p>결제금액 (원)</p> 
								<input type="number" class="form-control" value="109000" id="hisPaid" name="hisPaid"><br>
							</div>
							<div class="card-footer">
								<button type="button" class="btn btn-outline-primary">취 소</button>
								&nbsp;&nbsp;&nbsp;
								<button type="submit" class="btn btn-primary">결제하기</button>
								<!-- 결제 api 모달창 떠야돼... -->
							</div>
						</div>
					</div>
					<br>
				</div>
			</form>
		</div>
	</div>
	<br>
	<br>
	<jsp:include page="../home/footer.jsp" />
</body>
</html>