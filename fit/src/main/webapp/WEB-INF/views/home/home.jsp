<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<h1>Welcome!</h1>
	<a href="proList.do">program</a>
	<a href="salTest.do">sales</a>
	<a href="timTest.do">timetable</a>

	<a href="catSelectList.do">category</a>
	<a href="regSelectList.do">region</a>
	<a href="insSelectList.do">instructor</a>
	<a href="memTest.do">member</a>
	<a href="parTest.do">partner</a>
	<a href="revSelectList.do">reviewSelectList</a>
	<a href="revSelectListByAdm.do">revSelectListByAdm</a>
	<a href="wisTest.do">wishlist</a>
	<a href="hisInsertForm.do">history</a>

	<jsp:include page="footer.jsp" />
</body>
</html>