<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Bingo One page parallax responsive HTML Template ">
<meta name="author" content="Themefisher.com">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>결제 확인창</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
<link rel="stylesheet" href="plugins/animate/animate.css">
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="css/style.css">

<style type="text/css">

p {
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
				<div class="row">
					<div class="col-6">
						<div class="card bg-light text-dark">
							<div class="card-header">
								<h4 align="center">신청자 정보</h4>
							</div>
							<div class="card-body" align="left">
								<table class="table">
									<tr>
										<th>이름</th>
										<td>${member.memName}</td>
									</tr>
									<tr>
										<th>전화번호</th>
										<td>${member.memPhone }</td>
									</tr>
									<tr>
										<th>이메일</th>
										<td>${member.memEmail }</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
						<div class="col-6">
					<form id="frm" name="frm" action="hisInsert.do" method="post">
							<div class="card bg-light text-dark">
								<div class="card-header">
									<h4 align="center">결제 정보</h4>
								</div>
								<div class="card-body" align="left">
									<table class="table">
										<tr>
											<th>프로그램</th>
											<td>${detailList[0].proName}</td>
										</tr>	
										<tr>
											<th>시작날짜</th>
											<td>${detailList[0].proSince}</td>
										</tr>
										<tr>
											<th>기간 (일)</th>
											<td>${detailList[0].proPeriod}</td>
										</tr>
										<tr>
											<th>결제금액 (원)</th>
											<td>${detailList[0].proPrice}</td>
										</tr>
									</table>
								</div>
								<div>
									<input type="hidden" id="hisProId" name="hisProId" value="${detailList[0].proId}">
									<input type="hidden" id="hisPeriod" name="hisPeriod" value="${detailList[0].proPeriod}">
									<input type="hidden" id="hisPaid" name="hisPaid" value="${detailList[0].proPrice}">
								</div>
								<div class="card-footer">
									<button type="button" class="btn btn-outline-primary" onclick="cancel()">취 소</button>
									&nbsp;&nbsp;&nbsp;
									<button type="button" class="btn btn-primary" onclick="payment()">결제하기</button>
								</div>
							</div>
					</form>
						</div>
					</div>
					<br>
				</div>
		</div>
	<br>
	<br>
	<jsp:include page="../home/footer.jsp" />
</body>
<script type="text/javascript">
	function payment() {
		alert("결제가 완료되었습니다.");
		frm.submit();
	}
	
	function cancel() {
		alert("결제를 취소하시겠습니까?");
		  history.go(-1);
	}
</script>
</html>