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
	<h1>ajax활용 필수!!</h1>
	<hr>
	<h1>이름: ${detailList[0].proName }</h1>
	<h1>사진: ${detailList[0].proPhoto }</h1>
	<h1>${detailList[0].catName }</h1>
	<h1>설명: ${detailList[0].proDesc }</h1>
	<h1>업체: ${detailList[0].parName }</h1>
	<h1>강사: ${detailList[0].insName }</h1>
	<h1>시작일: ${detailList[0].proSince }</h1>
	<c:if test="${detailList[0].proPeriod == 0 }">
		<h2>상설</h2>
	</c:if>
	<c:if test="${detailList[0].proPeriod != 0 }">
		<h2>기간: ${detailList[0].proPeriod}개월</h2>
	</c:if>
	<h1>지역: ${detailList[0].regName }</h1>
	<h1>등록인원: ${detailList[0].proPeople }</h1>
	<h1>최대인원: ${detailList[0].proMaxPeople }</h1>
	<h1>가격: ${detailList[0].proPrice }</h1>
	<h1>2개월 할인: ${detailList[0].proSale2 }</h1>
	<h1>3개월 할인: ${detailList[0].proSale3 }</h1>
	<h1>시간표: 월/${timetable.timMon } 화/${timetable.timTue } 수/${timetable.timWen } 일/${timetable.timSun }</h1>
	<hr>
	<c:forEach var="detail" items="${detailList }">
		<h2>${detail.revContent }</h2>
		<h2>${detail.revWriter }</h2>
	</c:forEach>
	<form action="memberEnroll.do">
		<input type="text" name="proId" value="${detailList[0].proId }">
		<input type="text" name="proPeople" value="${detailList[0].proPeople }">
		<input type="text" name="proMaxPeople" value="${detailList[0].proMaxPeople }">
		<button type="submit">등록</button>
	</form>
</body>
</html>