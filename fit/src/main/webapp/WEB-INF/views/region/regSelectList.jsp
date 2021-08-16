<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지역 전체 조회</title>
<style>
tr {
	text-align:center;
	background-color:#99CCFF;
}
</style>
</head>
<body>
<jsp:include page="../home/header.jsp" />
	<div align="center">
	<table border="1" rules="all">
		<tr>
			<c:forEach var="region" items="${list}">
				<td width="200" height="200">
				<h1>${region.regName}</h1></td>
			</c:forEach>
		</tr>
	</table>
	</div>
<jsp:include page="../home/footer.jsp" />
</body>
</html>