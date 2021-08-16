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
	<h1><a href="salAdminList.do">admin 전체보기</a></h1>
	<h1><a href="salAdminDetail.do">admin 상세보기</a></h1>
	<form action="salPatnerList.do" method="post">
		<input type="text" name="parId" placeholder="업체 전체보기">
		<button type="submit">GO</button>
	</form>
<jsp:include page="../home/footer.jsp" />
</body>
</html>