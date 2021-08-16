<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../home/header.jsp" />
	<c:forEach var="row" items="${list }">
		<h1>지역 이름: ${row.salRegName}</h1>
		<h1>업체 이름: ${row.parName}</h1>
		<h1>수익: ${row.salIncome}</h1>
		<h1>얻은 수수료: ${row.salFee}</h1>
		<h1>날짜: ${row.salDate}</h1>
	</c:forEach>
<jsp:include page="../home/footer.jsp" />
</body>
</html>