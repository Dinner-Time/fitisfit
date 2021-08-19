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
<jsp:include page="../home/header.jsp" />
	<c:forEach var="member" items="${list }">
		${member.memEmail } / ${member.memName } / ${member.memBirth } <br>
	</c:forEach>
	<h3><a href="loginForm.do">로그인 / 회원가입</a></h3>
	<h3><a href="memSelect.do">마이페이지</a></h3>
<jsp:include page="../home/footer.jsp" />
</body>
</html>