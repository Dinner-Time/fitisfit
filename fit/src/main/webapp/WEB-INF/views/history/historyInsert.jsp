<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>History Insert Message</title>
</head>
<body>
	<jsp:include page="../home/header.jsp" />
	<!-- 수강내역 입력이 성공적으로 되었는지 메세지를 띄워주는 페이지 (나중에 모달창으로 바꾸는게 나을듯..) -->
		<div align="center">
			<h3>${message}</h3>
			<h5><a href="home.do">홈으로</a></h5>
		</div>
	<jsp:include page="../home/footer.jsp" />
</body>
</html>