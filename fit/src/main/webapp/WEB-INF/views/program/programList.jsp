<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로그램 전체 리스트</title>
</head>
<body>
	<jsp:include page="../home/header.jsp" />
	<c:forEach var="pro" items="${list }">
		<h1>이름: ${pro.proName }</h1>
		<h1>사진: ${pro.proPhoto }</h1>
		<h1>설명: ${pro.proDesc }</h1>
		<h1>시작: ${pro.proSince }</h1>
		<h1>기간: ${pro.proPeriod }</h1>
		<h1>가격: ${pro.proPrice }</h1>
		<h1>인원: ${pro.proPeople }</h1>
		<h1>최대인원: ${pro.proMaxPeople }</h1>
		<form action="proDetail.do">
			<input type="text" name="proId" value="${pro.proId }">
			<button type="submit">Go</button>
		</form>
		<hr>
	</c:forEach>
	<jsp:include page="../home/footer.jsp" />
</body>
</html>