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
	<c:forEach var="tim" items="${list }">
		<h1>${tim.timProId }/월:${tim.timMon }/일:${tim.timSun }</h1>
		<hr>
	</c:forEach>
<jsp:include page="../home/footer.jsp" />
</body>
</html>