<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review Select By Partner</title>
</head>
<body>
	<!-- 파트너 측에서 회원의 후기를 볼 수 있는 페이지 -->
	<jsp:include page="../home/header.jsp" />
		<div>
			<h3>후기 목록</h3>
			<!-- 한 프로그램에 대한 전체 후기
			해당 파트너의 프로그램ID를 가져와서 각각 출력해줘야 함..
			(구현 방법을 고민중..ㅠ) -->
			
			<c:forEach var="review" items="${list}">
				${review.revScore} | ${review.revWriter}<br>
				${review.revDate}<br>
				${review.revContent}<br>
				<hr>
			</c:forEach>
			
		</div>
	<jsp:include page="../home/footer.jsp" />
</body>
</html>