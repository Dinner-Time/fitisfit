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
	<c:forEach var="pro" items="${list }">
		<h1>${pro.proId }/${pro.proName }</h1>
		<form action="proDetail.do">
			<input type="text" name="proId"value="${pro.proId }">
			<button type="submit">Go</button>
		</form>
		<hr>
	</c:forEach>
<jsp:include page="../home/footer.jsp" />
</body>
</html>