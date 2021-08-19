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
<jsp:include page="/WEB-INF/views/home/header.jsp" />
	<c:forEach var="partner" items="${list }">
		${partner.parEmail } / ${partner.parName } / ${partner.parIntro } <br>
	</c:forEach>
	<h3><a href="parInsertForm.do">업체 등록</a></h3>
<jsp:include page="/WEB-INF/views/home/footer.jsp" />
</body>
</html>