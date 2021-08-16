<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>History Test</title>
</head>
<body>
<jsp:include page="../home/header.jsp" />
	<div>
		<table border="1" rules="all">
			<tr>
				<th>History Id</th>
				<th>History MemEmail</th>
				<th>History ProId</th>
				<th>History Since</th>
			</tr>
			<c:forEach var="history" items="${list}">
				<tr>
					<td>${history.hisId}</td>
					<td>${history.hisMemEmail}</td>
					<td>${history.hisProId}</td>
					<td>${history.hisSince}</td>
				</tr>
			</c:forEach>
		</table>
		<a href="hisInsertForm.do">hisInsertForm</a>
	</div>
<jsp:include page="../home/footer.jsp" />
</body>
</html>