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
	<div align="center">
	
		<c:forEach var="category" items="${list}">
		CATEGORY ID : ${category.catId}
		CATEGORY NAME : ${category.catName}
		CATEGORY PHOTO : ${category.catPhoto}
		</c:forEach>
	
	</div>
<jsp:include page="../home/footer.jsp" />
</body>
</html>