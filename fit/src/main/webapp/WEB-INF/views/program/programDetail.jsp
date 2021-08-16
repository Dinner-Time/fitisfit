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
	<h1>${detailList[0].proName }</h1>
	<h1>${detailList[0].catName }</h1>
	<h1>${detailList[0].insName }</h1>
	<h1>${detailList[0].regName }</h1>
	<hr>
	<c:forEach var="detail" items="${detailList }">
		<h2>${detail.revContent }</h2>
		<h2>${detail.revWriter }</h2>
	</c:forEach>
</body>
</html>