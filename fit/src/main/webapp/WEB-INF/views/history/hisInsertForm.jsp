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

<title>History Insert</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="plugins/lightbox2/dist/css/lightbox.min.css">
<link rel="stylesheet" href="plugins/animate/animate.css">
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="css/style.css">
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
							<div class="card-body" align="left">
								<h3 align="center">신청자 정보</h3>
								신청자 이름<br> <br> 
								전화번호<br> <br> 
								이메일 주소<br>
								<input type="text" class="form-control" id="hisMemEmail" name="hisMemEmail">
							</div>
						</div>
					</div>
					<div class="col-6">
						<div class="card bg-light text-dark">
							<div class="card-body" align="left">
								<h3 align="center">결제 정보</h3>
								프로그램ID<br> <input type="number" class="form-control" id="hisProId" name="hisProId"><br>
								기간<br> <input type="number" class="form-control" id="hisPeriod" name="hisPeriod"><br>
								결제금액<br> <input type="number" class="form-control" id="hisPaid" name="hisPaid"><br>
								결제날짜<br> <input type="date" class="form-control" id="hisDate" name="hisDate"><br>
								<hr>
								<div align="center">
									<button type="submit" class="btn btn-outline-primary">결제하기</button>
								</div>
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