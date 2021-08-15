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
<div align="center">
	<div><h1>강사목록</h1></div>
	<div>
		<c:forEach var="ins" items="${list }">
			식별번호 : ${ins.insId } ,  <br/>
			사진 : ${ins.insPhoto}, <br/>
			이름 : ${ins.insName}, <br/>
			전화번호 : ${ins.insPhone}, <br/>
			성별 : ${ins.insGender},	<br/>
			인스타 : ${ins.insInsta}, <br/>
			카카오 : ${ins.insKakao}, <br/>
			이력 : ${ins.insHistory}, <br/>
			업체아이디 : ${ins.insParId}	<br/>
		</c:forEach>
	</div>
</div>
</body>
</html>