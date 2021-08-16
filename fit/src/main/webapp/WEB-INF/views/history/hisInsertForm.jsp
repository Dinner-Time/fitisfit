<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>History Insert Form</title>
</head>
<body>
<jsp:include page="../home/header.jsp" />
	<!-- 결제창 : 회원이 프로그램 최종 확인을 하고 결제 버튼을 누르면 수강내역에 insert가 되는 페이지 -->
	<div>
	<form id="frm" name="frm" action="hisInsert.do" method="post">
	
	<div>
		<h3>신청자 정보</h3>
		신청자 이름<br>
		<br>
		전화번호<br>
		<br>
		이메일 주소<br>
		<input type="text" id="hisMemEmail" name="hisMemEmail"><br>
	</div>
	<div>
		<h3>결제 정보</h3>
		프로그램ID<br>
		<input type="number" id="hisProId" name="hisProId"><br>
		기간<br>
		<input type="number" id="hisPeriod" name="hisPeriod"><br>
		결제금액<br>
		<input type="number" id="hisPaid" name="hisPaid"><br>
		결제날짜<br>
		<input type="date" id="hisDate" name="hisDate"><br>
	</div>
	<br>
	<div>
		<button type="submit">결제하기</button>
	</div>
	</form>
	</div>
	<jsp:include page="../home/footer.jsp" />
</body>
</html>