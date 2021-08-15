<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review Test</title>
</head>
<body>
	<div>
		<table border="1" rules="all">
			<tr>
				<th>Review Id</th>
				<th>Review ProId</th>
				<th>Review Score</th>
				<th>Review Content</th>
				<th>Review Writer</th>
			</tr>
			<c:forEach var="review" items="${list}">
				<tr>
					<td>${review.revId}</td>
					<td>${review.revProId}</td>
					<td>${review.revScore}</td>
					<td>${review.revContent}</td>
					<td>${review.revWriter}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>