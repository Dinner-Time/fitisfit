<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review Select List</title>
</head>
<body>
	<jsp:include page="../home/header.jsp" />
	<!-- 권한이 없어도 프로그램 상세보기에서 후기를 보여주는 부분. 
	프로그램 상세보기 페이지에 합치면 됨..
	그러려면 프로그램 id 받아와서 해당 프로그램에 대한 후기만 보여줘야 됨 -->
	<div>
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