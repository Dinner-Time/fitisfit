<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../home/header.jsp" />
	<h1>수정 및 정산 모두 ajax로</h1>
	<hr>
	<c:forEach var="row" items="${list }">
		<h1>수익(-수수료): ${row.salIncome - row.salFee}</h1>
		<h1>날짜: ${row.salDate}</h1>
		<c:if test="${row.salDate == today }">
			<form action="salPartnerUpdate.do" method="post">
				<input type="hidden" name="parId" value="${row.salParId }">
				<input type="text" name="salIncome" placeholder="금액 수정">
				<button type="submit">수정</button>
			</form>
			<hr>
		</c:if>
	</c:forEach>
	<hr>
	<form action="salPartnerInsert.do" method="post">
		<input type="hidden" name="parId" value="${list[0].salParId }">
		<input type="text" name="salIncome" placeholder="오늘 정산 금액">
		<button type="submit">정산</button>
	</form>
	<jsp:include page="../home/footer.jsp" />
</body>
</html>