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
	<div><h1>위시리스트</h1></div>
	<div>
		<c:forEach var="wis" items="${list }">
			프로그램아이디 : ${wis.wisProId } ,  <br/>
			회원이메일 : ${wis.wisMemEmail}, <br/>
			위시리스트아이디 : ${wis.wisId} <br/>
		</c:forEach>
	</div>
</div>
<jsp:include page="../home/footer.jsp" />
</body>
</html>